package com.example.myshop.service;


import com.example.myshop.model.CustomUserDetail;
import com.example.myshop.model.User;
import com.example.myshop.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;
@Service
public class CustomUserDetailService implements UserDetailsService {
    @Autowired
    UserRepository userRepository;
    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        Optional<User>user=userRepository.findUserByEmail(email);
        user.orElseThrow(()->new UsernameNotFoundException("User to Im"));
        return  user.map(CustomUserDetail::new ).get();

    }
}
