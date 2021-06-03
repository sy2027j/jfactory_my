package com.spring.ex.review;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.util.Criteria;

@Repository
public class ReviewDAOlmpl implements ReviewDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.mappers.testMapper";

	@Override
	public void review(ReviewDTO dto) throws Exception {
		sqlSession.insert(namespace + ".Reiew", dto);
	}

	@Override
	public ReviewDTO detail(int re_no) {
		return sqlSession.selectOne(namespace + ".ReviewView", re_no);
	}

	@Override
	public List<ReviewDTO> reviewList(Criteria cri) throws Exception {
		System.out.println("DAO: listPageCri 호출");
		return sqlSession.selectList(namespace + ".ReviewList", cri);
	}

	// 페이징
	@Override
	public List<ReviewDTO> reviewListPage(int page) throws Exception {
		if (page <= 0) {
			page = 1;
		}
		page = (page - 1) * 15;
		return sqlSession.selectList(namespace + ".reviewListPage", page);
	}

	// DB 테이블에 있는 모든 글 개수 계산 후 리턴
	@Override
	public int reviewpageCount() throws Exception {
		return sqlSession.selectOne(namespace + ".reviewpageCount");
	}

	@Override
	public List<ReviewDTO> bestlist() throws Exception {
		return sqlSession.selectList(namespace + ".BestReview");
	}

	@Override
	public void Review_count(int re_no) throws Exception {
		sqlSession.update(namespace + ".Review_count", re_no);
	}

	@Override
	public List<ReviewDTO> myreList(ReviewDTO dto) throws Exception {
		return sqlSession.selectList(namespace + ".MyReviewList", dto);
	}

}
