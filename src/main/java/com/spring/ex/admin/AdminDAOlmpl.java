package com.spring.ex.admin;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAOlmpl implements AdminDAO{

	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.spring.ex.mappers.testMapper";
	
	@Override
	public List<AdminDTO> adminMemberList() throws Exception{
		return sqlSession.selectList(namespace + ".adminMemberList");
	}
	@Override
	public List<AdminDTO> adminList() throws Exception{
		return sqlSession.selectList(namespace+".AdminList");
	}
}
