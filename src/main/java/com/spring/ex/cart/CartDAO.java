package com.spring.ex.cart;

import org.springframework.stereotype.Repository;

@Repository
public interface CartDAO {
	public void delete(CartDTO dto) throws Exception;
}
