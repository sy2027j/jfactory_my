package com.spring.ex.review;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class ReviewDAOlmpl implements ReviewDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.spring.ex.mappers.testMapper";
	
	@Override
	public void review(Map<String, Object> map) throws Exception{
		sqlSession.insert(namespace+".Reiew", map);
	}
	
	@Override
	public ReviewDTO detail(int re_no) {
		return sqlSession.selectOne(namespace+".ReviewView", re_no);
	}
	
	@Override
	public List<ReviewDTO> reviewList() throws Exception{
		return sqlSession.selectList(namespace+".ReviewList");
	}
	
	@Override
	public List<ReviewDTO> bestlist() throws Exception{
		return sqlSession.selectList(namespace+".BestReview");
	}
	
	@Override
	public void Reiew_count(ReviewDTO dto) throws Exception{
		sqlSession.update(namespace+".Reiew_count", dto);
	}
}
