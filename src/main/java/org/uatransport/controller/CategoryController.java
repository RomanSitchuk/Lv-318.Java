package org.uatransport.controller;


import lombok.RequiredArgsConstructor;
import org.springframework.core.io.ClassPathResource;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.util.StreamUtils;
import org.springframework.web.bind.annotation.*;
import org.uatransport.config.SearchCategoryParam;
import org.uatransport.config.SearchSpecification;
import org.uatransport.entity.ExtendableCategory;
import org.uatransport.entity.NonExtendableCategory;
import org.uatransport.service.CategoryService;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/category")
@RequiredArgsConstructor
@CrossOrigin
public class CategoryController {
    private final CategoryService categoryService;

    @GetMapping("/{id}")
    public ResponseEntity<ExtendableCategory> getCategoryById(@PathVariable Integer id) {

        ExtendableCategory category = categoryService.getById(id);

        return new ResponseEntity<>(category, HttpStatus.OK);
    }

    @GetMapping(value = "/top/")
    public ResponseEntity<List<ExtendableCategory>> getTopCategories() {
        return new ResponseEntity<>(categoryService.getListTopExtendableCategories(), HttpStatus.OK);
    }

    @GetMapping("/nextLevel/")
    public ResponseEntity<List<ExtendableCategory>> getCategoriesByNextLevel(@RequestParam String nextLevel) {
        return new ResponseEntity<>(categoryService.getByNextLevelCategoryId(categoryService.getByName(nextLevel).getId()), HttpStatus.OK);
    }

    @GetMapping("/get")
    public ResponseEntity<List<NonExtendableCategory>> getCategoryByNames(@RequestParam String name, @RequestParam String next) {
        List<NonExtendableCategory> categories = categoryService.getByNames(name, next);
        return new ResponseEntity<>(categories, HttpStatus.OK);
    }

    @GetMapping
    public ResponseEntity<List<ExtendableCategory>> search(SearchCategoryParam searchCategoryParam) {
        SearchSpecification specification = new SearchSpecification(searchCategoryParam);

        return new ResponseEntity<>(categoryService.getAll(specification), HttpStatus.OK);
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public ResponseEntity<ExtendableCategory> save(@RequestBody ExtendableCategory category) {
        ExtendableCategory savedCategory = categoryService.save(category);
        return new ResponseEntity<>(savedCategory, HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.OK)
    public void delete(@PathVariable Integer id) {
        categoryService.delete(id);
    }

    @PutMapping("/{id}")
    @ResponseStatus(HttpStatus.OK)
    public ResponseEntity<ExtendableCategory> update(@RequestBody ExtendableCategory category, @PathVariable Integer id) {
        ExtendableCategory updatedCategory = categoryService.update(category.setId(id));
        return new ResponseEntity<>(updatedCategory, HttpStatus.OK);
    }

    @GetMapping(value = "/img", produces = MediaType.IMAGE_PNG_VALUE)
    public void getImage(HttpServletResponse response, @RequestParam String link) throws IOException {
        ClassPathResource imgFile = new ClassPathResource(link);
        response.setContentType(MediaType.IMAGE_PNG_VALUE);
        StreamUtils.copy(imgFile.getInputStream(), response.getOutputStream());
    }
}