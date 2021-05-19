package com.spring.ex.review;

import org.springframework.stereotype.Repository;

@Repository
public interface ReviewDAO {

	public void review(ReviewDTO dto) throws Exception;
}
