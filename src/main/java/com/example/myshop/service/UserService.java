package com.example.myshop.service;

import com.example.myshop.domain.User;
import com.example.myshop.dto.UserDTO;

import java.util.List;

public interface UserService {
    User save(UserDTO userDTO);
    User findByEmail(String email);

    List<User> findAll();

    void deleteById(Long id);

    User update(UserDTO userDTO);

    void registerUser(User user);
}
