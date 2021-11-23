package com.spring.ex.cart;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.spring.ex.admin.AdminDTO;
import com.spring.ex.order.OrderDTO;
import com.spring.ex.order.OrderDetailDTO;
import com.spring.ex.review.ReviewDTO;
import com.spring.ex.util.Criteria;

@Service
public interface CartService {
	public void delete(CartDTO dto) throws Exception;
	
	public void AddCart(CartDTO dto) throws Exception; 
	
	public List<CartDTO> CartList(String mem_id) throws Exception;
	
	public List<OrderDTO> adminorderList(Criteria cri) throws Exception;
	
	public int orderListpageCount() throws Exception;
	
	public List<OrderDTO> adminordercancelList(HashMap<String, Object> orderCancelListMap) throws Exception;
	
	public int ordercancelListpageCount() throws Exception;
	
	public List<OrderDTO> orderSearchList(Criteria cri) throws Exception;

	public int orderSearchpageCount() throws Exception;
	
	public List<OrderDTO> orderCancelSearchList(Criteria cri) throws Exception;
	
	public int orderCancelSearchpageCount() throws Exception;
	
	public void orderInfo(OrderDTO dto) throws Exception;
	
	public void orderdetailInfo(OrderDetailDTO dto) throws Exception;
	
	public void orderdetailInfo_d(OrderDetailDTO dto) throws Exception;
	
	public void cartAllDelete(String mem_id)throws Exception;
	
	public List<OrderDTO> orderList(OrderDTO dto) throws Exception;
	
	public List<OrderDetailDTO> orderdetailList(OrderDetailDTO dto) throws Exception;
	
	public List<OrderDetailDTO> order_detailList(OrderDetailDTO dto) throws Exception;
	
	public OrderDTO OrdermemDetail(OrderDTO dto) throws Exception;
	
	public void OrderCancel(OrderDTO dto) throws Exception;
	
	public void ReviewOk(OrderDetailDTO dto) throws Exception;
}
