package com.spring.ex.admin;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.adMember.MemberDTO;

@Service
public class AdminServicelmpl implements AdminService{

	@Inject
	private AdminDAO dao;
	
	@Override
	public List<AdminDTO> adminMemberList() throws Exception{
		return dao.adminMemberList();
	}
	@Override
	public List<AdminDTO> adminList() throws Exception{
		return dao.adminList();
	}
	@Override
	public AdminDTO member_detail(AdminDTO dto) throws Exception{
		return dao.member_detail(dto);
	}
}
