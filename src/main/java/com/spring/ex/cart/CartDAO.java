package com.spring.ex.cart;

import java.util.HashMap; 
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.spring.ex.admin.AdminDTO;
import com.spring.ex.order.OrderDTO;
import com.spring.ex.order.OrderDetailDTO;
import com.spring.ex.product.ProductDTO;
import com.spring.ex.util.Criteria;

@Repository
public interface CartDAO {
	public void delete(CartDTO dto) throws Exception;
	
	public void AddCart(CartDTO dto) throws Exception;
	
	public List<CartDTO> CartList(String mem_id) throws Exception;
	
	public List<OrderDTO> adminorderList(Criteria cri) throws Exception;
	
	public List<OrderDTO> adminorderListPage(int page) throws Exception;

	public int orderListpageCount() throws Exception;
	
	public List<OrderDTO> adminordercancelList(Criteria cri) throws Exception;
	
	public List<OrderDTO> adminordercancelListPage(int page) throws Exception;
	
	public int ordercancelListpageCount() throws Exception;
	
	public List<OrderDTO> orderSearchList(Criteria cri) throws Exception;

	public List<OrderDTO> orderSearchListPage(int page) throws Exception;

	public int orderSearchpageCount() throws Exception;
	
	public List<OrderDTO> orderCancelSearchList(Criteria cri) throws Exception;
	
	public List<OrderDTO> orderCancelSearchListPage(int page) throws Exception;
	
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
