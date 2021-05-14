package com.spring.ex.adMember;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface MemberService {

	public List<MemberDTO> memberList() throws Exception;
}