package com.spring.ex.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.ex.adMember.MemberDTO;
import com.spring.ex.util.Criteria;

@Service
public interface AdminService {

	public List<AdminDTO> adminMemberList() throws Exception;

	public List<AdminDTO> adminSearchList(Criteria cri) throws Exception;

	public int adminSearchpageCount() throws Exception;

	public List<AdminDTO> adminList() throws Exception;

	public AdminDTO member_detail(AdminDTO dto) throws Exception;
}
