package com.spring.ex.joinout;

import org.springframework.stereotype.Service;


@Service
public interface JoinoutService {
	
	public void joinout(JoinoutDTO Jdto) throws Exception;
}
