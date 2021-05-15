package com.spring.ex.adMember;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;
	
	@Override
	public List<MemberDTO> memberList() throws Exception {
		return dao.memberList();
	}
	
	@Override
	public void memberJoinMethod(MemberDTO dto) throws Exception{
		dao.memberJoinMethod(dto);
	}
}