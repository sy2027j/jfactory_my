package com.spring.ex.admin;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface AdminDAO {

	//ȸ�� ��� �ҷ����� ( ������ ���� )
	public List<AdminDTO> adminMemberList() throws Exception;
	//�����ڸ� �ҷ����� 
	public List<AdminDTO> adminList() throws Exception;
	
	
}
