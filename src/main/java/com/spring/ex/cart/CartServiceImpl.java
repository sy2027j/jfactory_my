package com.spring.ex.cart;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.admin.AdminDTO;
import com.spring.ex.order.OrderDTO;
import com.spring.ex.order.OrderDetailDTO;
import com.spring.ex.util.Criteria;


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
	public List<OrderDTO> adminorderList(Criteria cri) throws Exception{
		return dao.adminorderList(cri);
	}
	
	@Override
	public int orderListpageCount() throws Exception {
		return dao.orderListpageCount();
	}
	 
	@Override 
	public List<OrderDTO> adminordercancelList(HashMap<String, Object> orderCancelListMap) throws Exception{
		return dao.adminordercancelList(orderCancelListMap);
	}
	
	@Override
	public int ordercancelListpageCount() throws Exception {
		return dao.ordercancelListpageCount();
	}
	
	@Override
	public List<OrderDTO> orderSearchList(Criteria cri) throws Exception {
		return dao.orderSearchList(cri);
	}

	@Override
	public int orderSearchpageCount() throws Exception {
		return dao.orderSearchpageCount();
	}
	
	@Override
	public List<OrderDTO> orderCancelSearchList(Criteria cri) throws Exception {
		return dao.orderCancelSearchList(cri);
	}
	
	@Override
	public int orderCancelSearchpageCount() throws Exception {
		return dao.orderCancelSearchpageCount();
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
	public void orderdetailInfo_d(OrderDetailDTO dto) throws Exception{
		dao.orderdetailInfo_d(dto);
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
	public List<OrderDetailDTO> order_detailList(OrderDetailDTO dto) throws Exception{
		return dao.order_detailList(dto);
	}
	
	@Override
	public OrderDTO OrdermemDetail(OrderDTO dto) throws Exception{
		return dao.OrdermemDetail(dto);
	}
	
	@Override
	public void OrderCancel(OrderDTO dto) throws Exception{
		dao.OrderCancel(dto);
	}
	
	@Override
	public void ReviewOk(OrderDetailDTO dto) throws Exception{
		dao.ReviewOk(dto);
	}
}
