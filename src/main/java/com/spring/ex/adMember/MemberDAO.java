package com.spring.ex.adMember;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface MemberDAO {

	//
	public List<MemberDTO> memberList() throws Exception;
	
	//회원가입
	public void memberJoinMethod(MemberDTO dto) throws Exception;
	
	//아이디 중복
	public int idChk(MemberDTO dto) throws Exception;
	
	//로그인 
	public MemberDTO Login(MemberDTO dto) throws Exception;
	
	
}