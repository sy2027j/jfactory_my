package com.spring.ex.cart;

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

}
