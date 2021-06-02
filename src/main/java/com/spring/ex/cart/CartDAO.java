package com.spring.ex.cart;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.spring.ex.order.OrderDTO;
import com.spring.ex.order.OrderDetailDTO;

@Repository
public interface CartDAO {
	public void delete(CartDTO dto) throws Exception;
	
	public void AddCart(CartDTO dto) throws Exception;
	
	public List<CartDTO> CartList(String mem_id) throws Exception;
	
	public void orderInfo(OrderDTO dto) throws Exception; 
	
	public void orderdetailInfo(OrderDetailDTO dto) throws Exception;
	
	public void cartAllDelete(String mem_id)throws Exception;
}
