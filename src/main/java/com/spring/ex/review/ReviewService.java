package com.spring.ex.review;

import org.springframework.stereotype.Service;

@Service
public interface ReviewService {

	public void review(ReviewDTO dto) throws Exception;
}
