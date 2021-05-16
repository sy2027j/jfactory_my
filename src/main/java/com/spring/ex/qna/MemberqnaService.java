package com.spring.ex.qna;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.ex.adMember.MemberDTO;

@Service
public interface MemberqnaService {

	public List<MemberqnaDTO> qnaList() throws Exception;
	
	public void qnaWriteMethod(MemberqnaDTO dto) throws Exception;
}
