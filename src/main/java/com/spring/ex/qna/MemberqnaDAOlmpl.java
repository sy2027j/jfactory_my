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
	public MemberqnaDTO detail(int qna_no) {
		return sqlSession.selectOne(namespace+".QnaDetail", qna_no);
	}
	
	@Override
	public void ReplyQna(MemberqnaDTO dto) throws Exception{
		sqlSession.update(namespace+".ReplyQna", dto);
	}
	
	@Override
	public void NoticeWrite(MemberqnaDTO dto) throws Exception{
		sqlSession.insert(namespace+".WriteNotice",dto);
	}
}
