package com.example.myshop.repository;

import com.example.myshop.domain.Category;
import com.example.myshop.domain.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {
    List<Product> findByCategory(Category category);
}
