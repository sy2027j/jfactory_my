package com.spring.ex.qna;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberqnaDAOlmpl implements MemberqnaDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.spring.ex.mappers.testMapper";
	
	@Override
	public List<MemberqnaDTO> qnaList() throws Exception {
		return sqlSession.selectList(namespace+".QnaList");
	}

	@Override
	public void qnaWriteMethod(MemberqnaDTO dto) throws Exception{
		sqlSession.insert(namespace+".QnaWrite",dto);
	}
	
	@Override
	public MemberqnaDTO detail(String mem_id) {
		return sqlSession.selectOne(namespace+".QnaDetail", mem_id);
	}
}
