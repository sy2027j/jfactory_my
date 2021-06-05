package com.spring.ex.cart;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.order.OrderDTO;
import com.spring.ex.order.OrderDetailDTO;

@Repository
public class CartDAOImpl implements CartDAO {
	
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.mappers.cartMapper";
	
	
	@Override
	public void delete(CartDTO dto) throws Exception {
		sqlSession.delete(namespace+".delete", dto);

	}
	
	@Override
	public void AddCart(CartDTO dto) throws Exception{
		sqlSession.insert(namespace+".AddCart",dto);
	}

	@Override
	public List<CartDTO> CartList(String mem_id) throws Exception{
		return sqlSession.selectList(namespace+".CartList",mem_id);
	}
	
	@Override
	public void orderInfo(OrderDTO dto) throws Exception{
		sqlSession.insert(namespace+".orderInfo", dto);
	}
	
	@Override
	public void orderdetailInfo(OrderDetailDTO dto) throws Exception{
		sqlSession.insert(namespace+".orderdetailInfo",dto);
	}
	
	@Override
	public void orderdetailInfo_d(OrderDetailDTO dto) throws Exception{
		sqlSession.insert(namespace+".orderdetailInfo_d",dto);
	}
	
	@Override
	public void cartAllDelete(String mem_id)throws Exception{
		sqlSession.delete(namespace+".cartAllDelete",mem_id);
	}
	
	@Override
	public List<OrderDTO> orderList(OrderDTO dto) throws Exception{
		return sqlSession.selectList(namespace+".orderList",dto);
	}
	
	@Override
	public List<OrderDetailDTO> orderdetailList(OrderDetailDTO dto) throws Exception{
		return sqlSession.selectList(namespace+".OrderDetail",dto);
	}
	
	@Override
	public List<OrderDetailDTO> order_detailList(OrderDetailDTO dto) throws Exception{
		return sqlSession.selectList(namespace+".Order_Detail",dto);
	}
	
	@Override
	public OrderDTO OrdermemDetail(OrderDTO dto) throws Exception{
		return sqlSession.selectOne(namespace+".OrdermemDetail",dto);
	}
	
	@Override
	public void OrderCancel(OrderDTO dto) throws Exception{
		sqlSession.update(namespace+".OrderCancel",dto);
	}
	
	@Override
	public void ReviewOk(OrderDetailDTO dto) throws Exception{
		sqlSession.update(namespace+".ReviewOk",dto);
	}
}
