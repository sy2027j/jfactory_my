package com.spring.ex.qna;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.util.Criteria;

@Repository
public interface MemberqnaDAO {

	public List<MemberqnaDTO> qnaList(Criteria cri) throws Exception;
	
	public List<MemberqnaDTO> qnaListPage(int page) throws Exception;
		
	//DB ���̺� �ִ� ��� �� ���� ��� �� ����
	public int pageCount() throws Exception;
	
	public void qnaWriteMethod(MemberqnaDTO dto) throws Exception;
	
	public MemberqnaDTO detail(int qna_no);
	
	public void ReplyQna(MemberqnaDTO dto) throws Exception;
	
	public void NoticeWrite(MemberqnaDTO dto) throws Exception;
	
	public List<MemberqnaDTO> myqnaList(MemberqnaDTO dto) throws Exception;
}
