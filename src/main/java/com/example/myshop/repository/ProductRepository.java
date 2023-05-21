package com.example.myshop.repository;

import com.example.myshop.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {
    List<Product>findAllByCategory_Id(long id);

}
