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
	public void review(ReviewDTO dto, MultipartHttpServletRequest mpRequest) throws Exception{
		
		List<Map<String, Object>> list=fileUtils.parseInsertFileInfo(dto, mpRequest);
		int size =list.size();
		for(int i=0; i<size; i++) {
			dao.review(list.get(i));
		}
	}
	
	@Override
	public ReviewDTO detail(int re_no) {
		return dao.detail(re_no);
	}
	
	@Override
	public List<ReviewDTO> reviewList() throws Exception{
		return dao.reviewList();
	}
}
