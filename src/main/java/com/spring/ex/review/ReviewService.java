package com.spring.ex.review;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;



@Service
public interface ReviewService {

	public void review(ReviewDTO dto, MultipartHttpServletRequest mpRequest) throws Exception;
	
	public ReviewDTO detail(int re_no);
	
	public List<ReviewDTO> reviewList() throws Exception;
	
	public List<ReviewDTO> bestlist() throws Exception;
	
	public void Reiew_count(ReviewDTO dto) throws Exception;
}
