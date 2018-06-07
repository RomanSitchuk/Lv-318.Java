package org.uaTransport.service.implementation;

import com.google.common.base.Strings;
import com.google.common.collect.Streams;
import lombok.RequiredArgsConstructor;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.uaTransport.entity.Stop;
import org.uaTransport.entity.Transit;
import org.uaTransport.exception.ResourceNotFoundException;
import org.uaTransport.repository.TransitRepository;
import org.uaTransport.service.TransitService;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class TransitServiceImpl implements TransitService {

    private final TransitRepository transitRepository;

    @Override
    @Transactional
    public Transit addTransit(Transit transit) {
        if (transit == null) {
            throw new IllegalArgumentException("Transit object should not be null");
        }
        return transitRepository.save(transit);
    }

    @Override
    @Transactional
    public void delete(Integer id) {
        try {
            transitRepository.deleteById(id);
        } catch (EmptyResultDataAccessException e) {
            throw new ResourceNotFoundException(String.format("Transit with id '%s' not found", id));
        }
    }

    @Override
    @Transactional
    public void delete(Transit transit) {
        if (transit == null) {
            throw new IllegalArgumentException("Transit object should not be null");
        }
        try {
            transitRepository.delete(transit);
        } catch (EmptyResultDataAccessException e) {
            throw new ResourceNotFoundException(String.format("Transit with id '%s' not found", transit.getId()));
        }
    }

    @Override
    @Transactional
    public Transit update(Transit transit) {
        if (transit == null) {
            throw new IllegalArgumentException("Transit object should not be null");
        }
        return transitRepository.findById(transit.getId())
            .map(transit1 -> transitRepository.save(transit))
            .orElseThrow(() -> new ResourceNotFoundException(String
                .format("Transit with id '%s' not found", transit.getId())));
    }

    @Override
    @Transactional(readOnly = true)
    public Transit getById(Integer id) {
        return transitRepository.findById(id)
            .orElseThrow(() -> new ResourceNotFoundException(String
                .format("Transit with id '%s' not found", id)));
    }

    @Override
    @Transactional(readOnly = true)
    public Transit getByName(String name) {
        if (Strings.isNullOrEmpty(name)) {
            throw new IllegalArgumentException("Name should not be empty");
        }
        return transitRepository.findByName(name);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Transit> getAllByCategoryId(Integer id) {
        return transitRepository.findByCategoryId(id);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Transit> getAll() {
        return Streams.stream(transitRepository.findAll()).collect(Collectors.toList());
    }

    @Override
    @Transactional(readOnly = true)
    public List<Transit> getTransitsByStopsIn(Stop[] stops) {
        return transitRepository.findByStopsIn(stops);
    }
}
