package com.spring.ex.qna;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface MemberqnaDAO {

	public List<MemberqnaDTO> qnaList() throws Exception;
}
