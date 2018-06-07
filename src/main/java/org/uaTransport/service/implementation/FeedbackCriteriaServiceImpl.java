package com.example.demo.service.implementation;
import com.example.demo.entity.FeedbackCriteria;
import com.example.demo.entity.RatingCriteria;
import com.example.demo.exception.ResourceNotFoundException;
import com.example.demo.repository.FeedbackCriteriaRepository;
import com.example.demo.service.FeedbackCriteriaService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.uaTransport.entity.FeedbackCriteria;
import org.uaTransport.entity.RatingCriteria;
import org.uaTransport.exception.ResourceNotFoundException;
import org.uaTransport.repository.FeedbackCriteriaRepository;
import org.uaTransport.service.FeedbackCriteriaService;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class FeedbackCriteriaServiceImpl implements FeedbackCriteriaService {

    private final FeedbackCriteriaRepository feedbackCriteriaRepository;

    @Transactional
    public FeedbackCriteria save(FeedbackCriteria feedbackCriteria) {
        if (feedbackCriteria == null) {
            throw new IllegalArgumentException("Parameter should not be null");
        }
        return feedbackCriteriaRepository.save(feedbackCriteria);
    }

    @Override
    public void delete(Integer id) {
        feedbackCriteriaRepository.deleteById(id);
    }


    @Transactional
    public FeedbackCriteria update(FeedbackCriteria feedbackCriteria) {
        if (feedbackCriteria == null) {
            throw new IllegalArgumentException("Parameter should not be null");
        }

        if (feedbackCriteriaRepository.existsById(feedbackCriteria.getId())) {
            return feedbackCriteriaRepository.saveAndFlush(feedbackCriteria);
        }

        return feedbackCriteriaRepository.findById(feedbackCriteria.getId()).orElseThrow(() -> new ResourceNotFoundException(
                String.format("This FeedbackCriteria does not found", feedbackCriteria)));
    }

        @Override
        public List<FeedbackCriteria> getAll () {
            return feedbackCriteriaRepository.findAll();
        }

    @Override
    public List<FeedbackCriteria> getAll() {
        return feedbackCriteriaRepository.findAll();
    }

    @Override
    @Transactional(readOnly = true)
    public FeedbackCriteria getById(Integer id) {
        return feedbackCriteriaRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException(String
                .format("FeedbackCriteria with id '%s' not found", id)));
    }

    @Override
    @Transactional(readOnly = true)
    public List<FeedbackCriteria> getByGroupId(Integer groupId) {
        return feedbackCriteriaRepository.findByGroupId(groupId);
    }

    @Override
    public List<FeedbackCriteria> getByQuestion(String question) {
        if (question.isEmpty()) {
            throw new IllegalArgumentException("Parameter should not be null");
        }
        return feedbackCriteriaRepository.findByQuestion(question);
    }

    @Override
    @Transactional(readOnly = true)
    public List<FeedbackCriteria> getByType(FeedbackCriteria.FeedbackType type) {
        return feedbackCriteriaRepository.findByType(type);
    }

    @Override
    public List<RatingCriteria> getByWeight(Integer id) {
        if (id == null) {
            throw new IllegalArgumentException("Parameter should not be null");
        }
        return feedbackCriteriaRepository.findByWeight(id);
    }

    @Override
    public List<FeedbackCriteria> getByCategoryId(Integer id) {
        return feedbackCriteriaRepository.findFeedbackCriteriaByNonExtendableCategoryId(id);
    }
}