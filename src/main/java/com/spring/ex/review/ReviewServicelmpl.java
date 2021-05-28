package com.spring.ex.review;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.util.FileUtils;

@Service
public class ReviewServicelmpl implements ReviewService {

	@Inject
	private ReviewDAO dao;
	
	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	
	@Override
	public void review(ReviewDTO dto) throws Exception{
		dao.review(dto);
	}
	
	@Override
	public ReviewDTO detail(int re_no) {
		return dao.detail(re_no);
	}
	
	@Override
	public List<ReviewDTO> reviewList() throws Exception{
		return dao.reviewList();
	}
	
	@Override
	public List<ReviewDTO> bestlist() throws Exception{
		return dao.bestlist();
	}
	
	@Override
	public void Review_count(int re_no) throws Exception{
		dao.Review_count(re_no);
	}
}
