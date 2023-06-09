package com.example.myshop.controller;

import com.example.myshop.global.GlobalData;
import com.example.myshop.model.Product;
import com.example.myshop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class CartController {
    @Autowired
    ProductService productService;
    Product product;

    @GetMapping("/addToCart/{id}")
    public String addToCart(@PathVariable long id) {
        product = productService.getProductById(id).orElse(null);
        if (product != null) {
            GlobalData.cart.add(product);
        }

        return "redirect:/shop";
    }

    @GetMapping("/cart")
    public String cartGet(Model model) {
        model.addAttribute("cartCount", GlobalData.cart.size());
        model.addAttribute("total", GlobalData.cart.stream().mapToDouble(Product::getPrice).sum());
        model.addAttribute("cart", GlobalData.cart);
        return "cart";
    }

    @GetMapping("/cart/removeItem/{index}")
    public String cartItemRemove(@PathVariable int index) {
        GlobalData.cart.remove(index);
        return "redirect:/cart";
    }

    @GetMapping("/checkout")
    public String checkout(Model model) {
        model.addAttribute("total", GlobalData.cart.stream().mapToDouble(Product::getPrice).sum());
        return "checkout";
    }

    @PostMapping("/payNow")
    public String payNow(Model model) {
        // Отримання обраного товару з кошика
        List<Product> cartItems = GlobalData.cart;
        model.addAttribute("total", GlobalData.cart.stream().mapToDouble(Product::getPrice).sum());
        model.addAttribute("cartItems", cartItems);
        return "orderPlaced";
    }

    @PostMapping("/confirmOrder")
    public String confirmOrder() {
        GlobalData.cart.clear();
        return "confirmOrder";
    }
}
