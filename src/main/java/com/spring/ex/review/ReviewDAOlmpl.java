package com.spring.ex.review;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDAOlmpl implements ReviewDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.spring.ex.mappers.testMapper";
	
	@Override
	public void review(ReviewDTO dto) throws Exception{
		sqlSession.insert(namespace+".Reiew",dto);
	}
}
