package com.spring.ex.admin;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface AdminDAO {

	//회원 목록 불러오기 ( 관리자 제외 )
	public List<AdminDTO> adminMemberList() throws Exception;
	//관리자만 불러오기 
	public List<AdminDTO> adminList() throws Exception;
	
	
}
