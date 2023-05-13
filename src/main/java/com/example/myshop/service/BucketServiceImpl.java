package com.example.myshop.service;

import com.example.myshop.repository.BucketRepository;
import com.example.myshop.domain.Bucket;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
    public class BucketServiceImpl implements BucketService {

        @Autowired
        private BucketRepository bucketRepository;

        @Override
        public List<Bucket> getAllBuckets() {
            return bucketRepository.findAll();
        }

        @Override
        public Bucket getBucketById(Long id) {
            return bucketRepository.findById(id).orElse(null);
        }

    @Override
    public void createBucket(Bucket bucket) {

    }

    @Override
    public void updateBucket(Bucket bucket) {

    }

    @Override
    public void deleteBucket(Long id) {

    }

    @Override
        public Bucket saveBucket(Bucket bucket) {
            return bucketRepository.save(bucket);
        }

        @Override
        public void deleteBucketById(Long id) {
            bucketRepository.deleteById(id);
        }

    }


