package com.spring.ex.joinout;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class JoinoutDAOImpl implements JoinoutDAO {
	
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.mappers.testMapper";
	
	@Override
	public void joinout(JoinoutDTO Jdto) throws Exception{
		sqlSession.insert(namespace+".joinout_input",Jdto);
	}
	
}
