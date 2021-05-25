package com.spring.ex.adMember;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface MemberDAO {

	//
	public List<MemberDTO> memberList() throws Exception;
	
	//ȸ������
	public void memberJoinMethod(MemberDTO dto) throws Exception;
	
	//���̵� �ߺ�
	public int idChk(MemberDTO dto) throws Exception;
	
	//�α��� 
	public MemberDTO Login(MemberDTO dto) throws Exception;
	
	public MemberDTO findid(MemberDTO dto) throws Exception;
	
	public MemberDTO findpw(MemberDTO dto) throws Exception;
	
	public void setPw(MemberDTO dto) throws Exception;
	
}