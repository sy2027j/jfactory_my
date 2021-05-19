package com.spring.ex.adMember;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

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
	
	@Override
	public int idChk(MemberDTO dto) throws Exception{
		int result = sqlSession.selectOne(namespace+".IdChk",dto);
		return result;
	}
	
	@Override
	public MemberDTO Login(MemberDTO dto) throws Exception{
		return sqlSession.selectOne(namespace+".Login", dto);
		
		
	}
	
}