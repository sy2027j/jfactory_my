package com.spring.ex.qna;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class MemberqnaServicelmpl implements MemberqnaService {

	@Inject
	private MemberqnaDAO dao;
	
	@Override
	public List<MemberqnaDTO> qnaList() throws Exception {
		return dao.qnaList();
	}

	@Override
	public void qnaWriteMethod(MemberqnaDTO dto) throws Exception{
		dao.qnaWriteMethod(dto);
	}
	
	@Override
	public MemberqnaDTO detail(int qna_no) {
		return dao.detail(qna_no);
	}
}
