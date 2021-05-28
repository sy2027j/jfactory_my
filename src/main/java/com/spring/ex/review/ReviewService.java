package com.spring.ex.review;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;



@Service
public interface ReviewService {

	public void review(ReviewDTO dto) throws Exception;
	
	public ReviewDTO detail(int re_no);
	
	public List<ReviewDTO> reviewList() throws Exception;
	
	public List<ReviewDTO> bestlist() throws Exception;

	public void Review_count(int re_no) throws Exception;

}
