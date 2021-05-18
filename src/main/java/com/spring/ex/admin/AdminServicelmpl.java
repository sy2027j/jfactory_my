package com.spring.ex.admin;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

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
}
