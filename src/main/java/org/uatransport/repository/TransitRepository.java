package org.uatransport.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.uatransport.entity.Transit;

import java.util.List;

public interface TransitRepository
        extends PagingAndSortingRepository<Transit, Integer>, JpaSpecificationExecutor<Transit> {

    Transit findByName(String name);

    Transit findByNameAndCategoryName(String name, String categoryName);

    List<Transit> findByNameContaining(String name);

    List<Transit> findByCategoryName(String name);

    Page<Transit> findByCategoryId(Integer id, Pageable pageable);

    List<Transit> findByCategoryNextLevelCategoryId(Integer id);

    Page<Transit> findByCategoryNextLevelCategoryName(String name, Pageable pageable);

}