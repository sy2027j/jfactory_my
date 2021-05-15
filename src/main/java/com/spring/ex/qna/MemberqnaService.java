package com.spring.ex.qna;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface MemberqnaService {

	public List<MemberqnaDTO> qnaList() throws Exception;
}
