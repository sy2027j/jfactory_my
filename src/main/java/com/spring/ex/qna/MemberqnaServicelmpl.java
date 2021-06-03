package com.spring.ex.qna;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.util.Criteria;

@Service
public class MemberqnaServicelmpl implements MemberqnaService {

	@Inject
	private MemberqnaDAO dao;
	
	@Override
	public List<MemberqnaDTO> qnaList(Criteria cri) throws Exception {
		return dao.qnaList(cri);
	}
	
	//DB ���̺� �ִ� ��� �� ���� ��� �� ����
	@Override
	public int pageCount() throws Exception {
		return dao.pageCount();
	}

	@Override
	public void qnaWriteMethod(MemberqnaDTO dto) throws Exception{
		dao.qnaWriteMethod(dto);
	}
	
	@Override
	public MemberqnaDTO detail(int qna_no) {
		return dao.detail(qna_no);
	}
	
	@Override
	public void ReplyQna(MemberqnaDTO dto) throws Exception{
		dao.ReplyQna(dto);
	}
	
	@Override
	public void NoticeWrite(MemberqnaDTO dto) throws Exception{
		dao.NoticeWrite(dto);
	}
	
	@Override
	public List<MemberqnaDTO> myqnaList(MemberqnaDTO dto) throws Exception{
		return dao.myqnaList(dto);
	}
}
