package com.spring.ex.admin;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.adMember.MemberDTO;

@Repository
public class AdminDAOlmpl implements AdminDAO{

	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.spring.ex.mappers.AdminMapper";
	
	@Override
	public List<AdminDTO> adminMemberList() throws Exception{
		return sqlSession.selectList(namespace + ".adminMemberList");
	}
	
	@Override
	public List<AdminDTO> adminList() throws Exception{
		return sqlSession.selectList(namespace+".AdminList");
	}
	
	@Override
	public AdminDTO member_detail(AdminDTO dto) throws Exception{
		return sqlSession.selectOne(namespace+".member_detail", dto);
	}
}
