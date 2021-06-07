package com.spring.ex.review;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.ex.util.Criteria;

@Service
public interface ReviewService {

	public void review(ReviewDTO dto) throws Exception;

	public ReviewDTO detail(int re_no);

	public List<ReviewDTO> reviewList(Criteria cri) throws Exception;

	// DB ���̺� �ִ� ��� �� ���� ��� �� ����
	public int reviewpageCount() throws Exception;

	public List<ReviewDTO> bestlist() throws Exception;

	public void Review_count(int re_no) throws Exception;

	public List<ReviewDTO> myreList(ReviewDTO dto) throws Exception;

	public int PdReviewCount(ReviewDTO dto) throws Exception;
}
