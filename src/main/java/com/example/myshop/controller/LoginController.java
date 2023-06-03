package com.example.myshop.controller;

import com.example.myshop.global.GlobalData;
import com.example.myshop.model.Role;
import com.example.myshop.model.User;
import com.example.myshop.repository.RoleRepository;
import com.example.myshop.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
public class LoginController {
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;
    @Autowired
    UserRepository userRepository;
    @Autowired
    RoleRepository roleRepository;

    @GetMapping("/login")
    public String login() {
        GlobalData.cart.clear();

        return "login";
    }

    @GetMapping("/register")
    public String registerGet() {
        return "register";
    }

    @PostMapping("/register")
    public String registerPost(@ModelAttribute("user") User user, HttpServletRequest request) throws ServletException {
        String password = user.getPassword();
        user.setPassword(bCryptPasswordEncoder.encode(password));
        List<Role> roles = new ArrayList<>();
        Optional<Role> roleOptional = roleRepository.findById(2L);
        roleOptional.ifPresent(roles::add);
        user.setRoles(roles);
        userRepository.save(user);
        request.login(user.getEmail(), password);
        return "redirect:/";
    }
}