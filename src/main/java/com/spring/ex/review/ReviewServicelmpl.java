package com.spring.ex.review;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class ReviewServicelmpl implements ReviewService {

	@Inject
	private ReviewDAO dao;
	
	@Override
	public void review(ReviewDTO dto) throws Exception{
		dao.review(dto);
	}
}
