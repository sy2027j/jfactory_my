package com.spring.ex.adMember;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

@Service
public interface MemberService {

	public List<MemberDTO> memberList() throws Exception;
	
	public void memberJoinMethod(MemberDTO dto) throws Exception;
	
	public int idChk(MemberDTO dto) throws Exception;
	
	public MemberDTO Login(MemberDTO dto) throws Exception;
	
	public MemberDTO findid(MemberDTO dto) throws Exception;
	
	
	public MemberDTO findPw(MemberDTO dto) throws Exception;
	
	public void setPw(MemberDTO dto) throws Exception;
	
}