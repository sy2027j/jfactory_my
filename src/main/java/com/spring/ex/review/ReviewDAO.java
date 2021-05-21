package com.spring.ex.review;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public interface ReviewDAO {

	public void review(Map<String, Object> map) throws Exception;
	
	public ReviewDTO detail(int re_no);
	
	public List<ReviewDTO> reviewList() throws Exception;
}
