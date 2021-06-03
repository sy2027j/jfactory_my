package com.spring.ex.qna;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.util.Criteria;

@Repository
public class MemberqnaDAOlmpl implements MemberqnaDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.spring.ex.mappers.testMapper";
	
	@Override
	public List<MemberqnaDTO> qnaList(Criteria cri) throws Exception {
		System.out.println("DAO: listPageCri 호출");
		return sqlSession.selectList(namespace+".QnaList", cri);
	}
	
	//페이징
	@Override
	public List<MemberqnaDTO> qnaListPage(int page) throws Exception {
		if(page <= 0) {
			page = 1;
		}
		page = (page - 1)*15;
		return sqlSession.selectList(namespace+".qnaListPage", page);
	}

	//DB 테이블에 있는 모든 글 개수 계산 후 리턴
	@Override
	public int pageCount() throws Exception{
		return sqlSession.selectOne(namespace+".pageCount");
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
