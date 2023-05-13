package com.example.myshop.service;

import com.example.myshop.domain.Category;
import com.example.myshop.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.crossstore.ChangeSetPersister;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryService {
    @Autowired
    private CategoryRepository categoryRepository;

    public List<Category> getAllCategories() {
        return categoryRepository.findAll();
    }

    public Category getCategoryById(Long id) throws ChangeSetPersister.NotFoundException {
        return categoryRepository.findById(id).orElseThrow(() -> new ChangeSetPersister.NotFoundException());
    }

    public void saveCategory(Category category) {
        categoryRepository.save(category);
    }

    public void deleteCategoryById(Long id) {
        categoryRepository.deleteById(id);
    }
}

