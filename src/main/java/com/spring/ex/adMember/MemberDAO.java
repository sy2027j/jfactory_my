package com.spring.ex.adMember;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface MemberDAO {

	public List<MemberDTO> memberList() throws Exception;
}