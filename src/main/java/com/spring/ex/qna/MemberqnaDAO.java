package com.spring.ex.qna;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface MemberqnaDAO {

	public List<MemberqnaDTO> qnaList() throws Exception;
	
	public void qnaWriteMethod(MemberqnaDTO dto) throws Exception;
	
	public MemberqnaDTO detail(int qna_no);
	
	public void ReplyQna(MemberqnaDTO dto) throws Exception;
	
	public void NoticeWrite(MemberqnaDTO dto) throws Exception;
}
