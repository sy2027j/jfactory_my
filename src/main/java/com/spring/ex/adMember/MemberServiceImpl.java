package com.spring.ex.adMember;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	MemberDAO dao;
	
	@Override
	public List<MemberDTO> memberList() throws Exception {
		return dao.memberList();
	}
	
	@Override
	public void memberJoinMethod(MemberDTO dto) throws Exception{
		dao.memberJoinMethod(dto);
	}
	
	@Override
	public int idChk(MemberDTO dto) throws Exception{
		int result=dao.idChk(dto);
		return result;
	}
	
	@Override
	public MemberDTO Login(MemberDTO dto) throws Exception {
		return dao.Login(dto);
	}
	
	@Override
	public MemberDTO findid(MemberDTO dto) throws Exception{
		return dao.findid(dto);
	}
	
	@Override
	public MemberDTO findpw(MemberDTO dto) throws Exception{
		return dao.findpw(dto);
	}
	
	@Override
	public void setPw(MemberDTO dto) throws Exception{
		dao.setPw(dto);
	}
	
	

}