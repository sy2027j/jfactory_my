package com.spring.ex.admin;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.adMember.MemberDTO;
import com.spring.ex.util.Criteria;

@Service
public class AdminServicelmpl implements AdminService {

	@Inject
	private AdminDAO dao;

	@Override
	public List<AdminDTO> adminMemberList() throws Exception {
		return dao.adminMemberList();
	}
	@Override
	public List<AdminDTO> adminSearchList(Criteria cri) throws Exception {
		return dao.adminSearchList(cri);
	}

	@Override
	public int adminSearchpageCount() throws Exception {
		return dao.adminSearchpageCount();
	}

	@Override
	public List<AdminDTO> adminList() throws Exception {
		return dao.adminList();
	}

	@Override
	public AdminDTO member_detail(AdminDTO dto) throws Exception {
		return dao.member_detail(dto);
	}
}
