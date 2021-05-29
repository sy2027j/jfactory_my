package com.spring.ex.cart;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;


@Service
public class CartServiceImpl implements CartService {

	@Inject
	CartDAO dao;
	
	@Override
	public void delete(CartDTO dto) throws Exception {
		dao.delete(dto);
	}

	@Override
	public void AddCart(CartDTO dto) throws Exception{
		dao.AddCart(dto);
	}
	
	@Override
	public List<CartDTO> CartList(CartDTO dto) throws Exception{
		return dao.CartList(dto);
	}
}
