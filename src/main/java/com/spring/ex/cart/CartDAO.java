package com.spring.ex.cart;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface CartDAO {
	public void delete(CartDTO dto) throws Exception;
	
	public void AddCart(CartDTO dto) throws Exception;
	
	public List<CartDTO> CartList(CartDTO dto) throws Exception;
}
