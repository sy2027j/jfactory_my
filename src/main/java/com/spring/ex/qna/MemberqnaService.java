package com.spring.ex.qna;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.ex.admin.AdminDTO;
import com.spring.ex.util.Criteria;


@Service
public interface MemberqnaService {

	public List<MemberqnaDTO> qnaList(Criteria cri) throws Exception;

	public int pageCount() throws Exception;
	
	public List<AdminDTO> qnaSearchList(Criteria cri) throws Exception;

	public int qnaSearchpageCount() throws Exception;
	
	public void qnaWriteMethod(MemberqnaDTO dto) throws Exception;
	
	public MemberqnaDTO detail(int qna_no);
	
	public void ReplyQna(MemberqnaDTO dto) throws Exception;
	
	public void NoticeWrite(MemberqnaDTO dto) throws Exception;
	
	public List<MemberqnaDTO> myqnaList(MemberqnaDTO dto) throws Exception;
	
	public List<AdminDTO> persnalQnaList(MemberqnaDTO mDto) throws Exception;
}
