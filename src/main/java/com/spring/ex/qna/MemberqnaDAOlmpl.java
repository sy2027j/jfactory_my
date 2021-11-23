package com.spring.ex.qna;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.admin.AdminDTO;
import com.spring.ex.util.Criteria;

@Repository
public class MemberqnaDAOlmpl implements MemberqnaDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.spring.ex.mappers.testMapper";
	
	@Override
	public List<MemberqnaDTO> qnaList(Criteria cri) throws Exception {
		System.out.println("DAO: listPageCri 호占쏙옙");
		return sqlSession.selectList(namespace+".QnaList", cri);
	}
	
	@Override
	public List<AdminDTO> qnaSearchList(Criteria cri) throws Exception {
		return sqlSession.selectList(namespace + ".qnaSearchList", cri);
	}

	@Override
	public List<AdminDTO> qnaSearchListPage(int page) throws Exception {
		if (page <= 0) {
			page = 1;
		}
		page = (page - 1) * 15;
		return sqlSession.selectList(namespace + ".qnaSearchListPage", page);
	}

	// DB 占쏙옙占싱븝옙 占쌍댐옙 占쏙옙占 占쏙옙 占쏙옙占쏙옙 占쏙옙占 占쏙옙 占쏙옙占쏙옙
	@Override
	public int qnaSearchpageCount() throws Exception {
		System.out.println("Ddd");
		return sqlSession.selectOne(namespace + ".qnaSearchpageCount");
	}
	
	//占쏙옙占쏙옙징
	@Override
	public List<MemberqnaDTO> qnaListPage(int page) throws Exception {
		if(page <= 0) {
			page = 1;
		}
		page = (page - 1)*15;
		return sqlSession.selectList(namespace+".qnaListPage", page);
	}

	//DB 占쏙옙占싱븝옙 占쌍댐옙 占쏙옙占� 占쏙옙 占쏙옙占쏙옙 占쏙옙占� 占쏙옙 占쏙옙占쏙옙
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
	
	@Override
	public List<MemberqnaDTO> myqnaList(MemberqnaDTO dto) throws Exception{
		return sqlSession.selectList(namespace+".MyQnaList",dto);
	}

	@Override
	public List<AdminDTO> persnalQnaList(MemberqnaDTO mDto) throws Exception {
		return sqlSession.selectList(namespace + ".PersnalQnaList", mDto);
	}
}
