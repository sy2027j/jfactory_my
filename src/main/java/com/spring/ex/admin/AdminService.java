package com.spring.ex.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.ex.adMember.MemberDTO;

@Service
public interface AdminService {
	
	
	public List<AdminDTO> adminMemberList() throws Exception;
	public List<AdminDTO> adminList() throws Exception;
	public AdminDTO member_detail(AdminDTO dto) throws Exception;
}
