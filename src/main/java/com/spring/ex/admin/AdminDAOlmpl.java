package com.spring.ex.admin;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.adMember.MemberDTO;
import com.spring.ex.util.Criteria;

@Repository
public class AdminDAOlmpl implements AdminDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.mappers.AdminMapper";

	@Override
	public List<AdminDTO> adminMemberList() throws Exception {
		return sqlSession.selectList(namespace + ".adminMemberList");
	}

	@Override
	public List<AdminDTO> adminSearchList(Criteria cri) throws Exception {
		return sqlSession.selectList(namespace + ".adminSearchList", cri);
	}

	@Override
	public List<AdminDTO> adminSearchListPage(int page) throws Exception {
		if (page <= 0) {
			page = 1;
		}
		page = (page - 1) * 15;
		return sqlSession.selectList(namespace + ".adminSearchListPage", page);
	}

	// DB ���̺� �ִ� ��� �� ���� ��� �� ����
	@Override
	public int adminSearchpageCount() throws Exception {
		return sqlSession.selectOne(namespace + ".adminSearchpageCount");
	}

	@Override
	public List<AdminDTO> adminList() throws Exception {
		return sqlSession.selectList(namespace + ".AdminList");
	}

	@Override
	public AdminDTO member_detail(AdminDTO dto) throws Exception {
		return sqlSession.selectOne(namespace + ".member_detail", dto);
	}
}
