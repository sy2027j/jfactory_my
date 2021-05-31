package com.spring.ex.joinout;

import org.springframework.stereotype.Repository;

@Repository
public interface JoinoutDAO {

		public void joinout(JoinoutDTO Jdto) throws Exception;
}
