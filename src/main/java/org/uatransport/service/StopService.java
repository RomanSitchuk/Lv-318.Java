package org.uatransport.service;

import org.uatransport.entity.Stop;

import java.util.List;

public interface StopService {
    Stop save(Stop point);

    Stop getById(Integer id);

    void delete(Integer id);

    Stop update(Stop point);

    List<Stop> getByTransitId(Integer id);

    Stop getByTransitIdAndStopNameAndDirection(Integer transitId, String street, String direction);

    List<Stop> getByTransitIdAndDirection(Integer id, String direction);

    Integer getIndexByTransitIdAndStopNameAndDirection(Integer transitId, String street, String direction);
}
