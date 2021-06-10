package com.spring.ex.review;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.ex.admin.AdminDTO;
import com.spring.ex.product.ProductDTO;
import com.spring.ex.util.Criteria;

@Service
public interface ReviewService {

	public void review(ReviewDTO dto) throws Exception;

	public ReviewDTO detail(int re_no);

	public List<ReviewDTO> reviewList(Criteria cri) throws Exception;
	
	public List<AdminDTO> reviewSearchList(Criteria cri) throws Exception;

	public int reviewSearchpageCount() throws Exception;

	public List<ReviewDTO> searchreviewlist(Criteria cri) throws Exception;
	
	public List<ReviewDTO> productreviewlist(Criteria cri) throws Exception;

	public int reviewpageCount() throws Exception;

	public List<ReviewDTO> bestlist() throws Exception;

	public void Review_count(int re_no) throws Exception;

	public List<ReviewDTO> myreList(ReviewDTO dto) throws Exception;

	public int PdReviewCount(ReviewDTO dto) throws Exception;
	
	public void ReviewDelete(ReviewDTO dto) throws Exception;
}
