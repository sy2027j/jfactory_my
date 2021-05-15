package com.spring.ex.adMember;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.mappers.testMapper";
	
	@Override
	public List<MemberDTO> memberList() throws Exception {
		return sqlSession.selectList(namespace + ".MemberList");
	}
	
	@Override
	public void memberJoinMethod(MemberDTO dto) throws Exception{
		sqlSession.insert(namespace+".Join",dto);
	}
}