package com.example.myshop.service;

import com.example.myshop.domain.Bucket;

import java.util.List;

public interface BucketService {
    List<Bucket> getAllBuckets();
    Bucket getBucketById(Long id);
    void createBucket(Bucket bucket);
    void updateBucket(Bucket bucket);
    void deleteBucket(Long id);

    Bucket saveBucket(Bucket bucket);

    void deleteBucketById(Long id);
}

