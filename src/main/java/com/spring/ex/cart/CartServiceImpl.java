package com.spring.ex.cart;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.order.OrderDTO;
import com.spring.ex.order.OrderDetailDTO;


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
	public List<CartDTO> CartList(String mem_id) throws Exception{
		return dao.CartList(mem_id);
	}
	
	@Override
	public void orderInfo(OrderDTO dto) throws Exception{
		dao.orderInfo(dto);
	}
	
	@Override
	public void orderdetailInfo(OrderDetailDTO dto) throws Exception{
		dao.orderdetailInfo(dto);
	}
	
	@Override
	public void cartAllDelete(String mem_id)throws Exception{
		dao.cartAllDelete(mem_id);
	}
	
	@Override
	public List<OrderDTO> orderList(OrderDTO dto) throws Exception{
		return dao.orderList(dto);
	}
	
	@Override
	public List<OrderDetailDTO> orderdetailList(OrderDetailDTO dto) throws Exception{
		return dao.orderdetailList(dto);
	}
	
	@Override
	public OrderDTO OrdermemDetail(OrderDTO dto) throws Exception{
		return dao.OrdermemDetail(dto);
	}
}
