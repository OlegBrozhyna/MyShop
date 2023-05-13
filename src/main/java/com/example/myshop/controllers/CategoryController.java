package com.example.myshop.controllers;
import java.util.List;

import com.example.myshop.domain.Category;
import com.example.myshop.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/categories")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @GetMapping
    public String getAllCategories(Model model) {
        List<Category> categories = categoryService.getAllCategories();
        model.addAttribute("categories", categories);
        return "categories";
    }
}

//@Repository
//public interface UserRepository extends JpaRepository<User, Long> {
//    User findByUsername(String username);
//}
//
//@Repository
//public interface ProductRepository extends JpaRepository<Product, Long> {
//}
//




