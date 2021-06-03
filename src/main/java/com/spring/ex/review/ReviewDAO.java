package com.spring.ex.review;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.spring.ex.qna.MemberqnaDTO;


@Repository
public interface ReviewDAO {

	public void review(ReviewDTO dto) throws Exception;
	
	public ReviewDTO detail(int re_no);
	
	public List<ReviewDTO> reviewList() throws Exception;
	
	public List<ReviewDTO> bestlist() throws Exception;

	public void Review_count(int re_no) throws Exception;
	
	public List<ReviewDTO> myreList(ReviewDTO dto) throws Exception;

}
