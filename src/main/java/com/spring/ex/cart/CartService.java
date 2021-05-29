package com.spring.ex.cart;

import org.springframework.stereotype.Service;

@Service
public interface CartService {
	public void delete(CartDTO dto) throws Exception;
}
