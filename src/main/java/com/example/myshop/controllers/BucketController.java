package com.example.myshop.controllers;

import com.example.myshop.domain.Bucket;
import com.example.myshop.service.BucketService;
import com.example.myshop.service.BucketServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/buckets")
public class BucketController {

    @Autowired
    private BucketService bucketService;

    @GetMapping
    public String getAllBuckets(Model model) {
        List<Bucket> buckets = bucketService.getAllBuckets();
        model.addAttribute("buckets", buckets);
        return "buckets";
    }
}


