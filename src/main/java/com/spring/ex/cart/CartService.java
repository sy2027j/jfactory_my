package com.spring.ex.cart;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.spring.ex.order.OrderDTO;
import com.spring.ex.order.OrderDetailDTO;

@Service
public interface CartService {
	public void delete(CartDTO dto) throws Exception;
	
	public void AddCart(CartDTO dto) throws Exception;
	
	public List<CartDTO> CartList(String mem_id) throws Exception;
	
	public void orderInfo(OrderDTO dto) throws Exception;
	
	public void orderdetailInfo(OrderDetailDTO dto) throws Exception;
	
	public void cartAllDelete(String mem_id)throws Exception;
	
}
