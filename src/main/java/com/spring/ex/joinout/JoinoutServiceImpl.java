package com.spring.ex.joinout;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class JoinoutServiceImpl implements JoinoutService{
	
	@Inject
	JoinoutDAO Jdao;

	@Override
	public void joinout(JoinoutDTO Jdto) throws Exception {
		Jdao.joinout(Jdto);
		
	}
	

}
