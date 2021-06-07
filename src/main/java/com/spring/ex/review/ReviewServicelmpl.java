package com.spring.ex.review;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.util.Criteria;
import com.spring.ex.util.FileUtils;

@Service
public class ReviewServicelmpl implements ReviewService {

	@Inject
	private ReviewDAO dao;

	@Resource(name = "fileUtils")
	private FileUtils fileUtils;

	@Override
	public void review(ReviewDTO dto) throws Exception {
		dao.review(dto);
	}

	@Override
	public ReviewDTO detail(int re_no) {
		return dao.detail(re_no);
	}

	@Override
	public List<ReviewDTO> reviewList(Criteria cri) throws Exception {
		return dao.reviewList(cri);
	}

	// DB ���̺� �ִ� ��� �� ���� ��� �� ����
	@Override
	public int reviewpageCount() throws Exception {
		return dao.reviewpageCount();
	}

	@Override
	public List<ReviewDTO> bestlist() throws Exception {
		return dao.bestlist();
	}

	@Override
	public void Review_count(int re_no) throws Exception {
		dao.Review_count(re_no);
	}

	@Override
	public List<ReviewDTO> myreList(ReviewDTO dto) throws Exception {
		return dao.myreList(dto);
	}
	
	@Override
	public int PdReviewCount(ReviewDTO dto) throws Exception{
		int result=dao.PdReviewCount(dto);
	    return result;
	}
}
