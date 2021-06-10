package com.spring.ex.cart;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.admin.AdminDTO;
import com.spring.ex.order.OrderDTO;
import com.spring.ex.order.OrderDetailDTO;
import com.spring.ex.util.Criteria;

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
	public List<OrderDTO> adminorderList(Criteria cri) throws Exception {
		return sqlSession.selectList(namespace + ".adminorderList", cri);
	}

	@Override
	public List<OrderDTO> adminorderListPage(int page) throws Exception {
		if (page <= 0) {
			page = 1;
		}
		page = (page - 1) * 15;
		return sqlSession.selectList(namespace + ".adminorderList", page);
	}

	// DB ï¿½ï¿½ï¿½Ìºï¿½ ï¿½Ö´ï¿½ ï¿½ï¿½ï¿ ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿ ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½
	@Override
	public int orderListpageCount() throws Exception {
		return sqlSession.selectOne(namespace + ".orderListpageCount");
	}
	
	@Override
	public List<OrderDTO> adminordercancelList(Criteria cri) throws Exception {
		return sqlSession.selectList(namespace + ".adminordercancelList", cri);
	}
	
	@Override
	public List<OrderDTO> adminordercancelListPage(int page) throws Exception {
		if (page <= 0) {
			page = 1;
		}
		page = (page - 1) * 15;
		return sqlSession.selectList(namespace + ".adminordercancelListPage", page);
	}
	
	// DB ï¿½ï¿½ï¿½Ìºï¿½ ï¿½Ö´ï¿½ ï¿½ï¿½ï¿ ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿ ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½
	@Override
	public int ordercancelListpageCount() throws Exception {
		return sqlSession.selectOne(namespace + ".ordercancelListpageCount");
	}
	
	@Override
	public List<OrderDTO> orderSearchList(Criteria cri) throws Exception {
		return sqlSession.selectList(namespace + ".orderSearchList", cri);
	}

	@Override
	public List<OrderDTO> orderSearchListPage(int page) throws Exception {
		if (page <= 0) {
			page = 1;
		}
		page = (page - 1) * 15;
		return sqlSession.selectList(namespace + ".orderSearchListPage", page);
	}

	// DB ï¿½ï¿½ï¿½Ìºï¿½ ï¿½Ö´ï¿½ ï¿½ï¿½ï¿ ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿ ï¿½ï¿½ ï¿½ï ¿½ï¿½ï¿½
	@Override
	public int orderSearchpageCount() throws Exception {
		return sqlSession.selectOne(namespace + ".orderSearchpageCount");
	}
	
	@Override
	public List<OrderDTO> orderCancelSearchList(Criteria cri) throws Exception {
		return sqlSession.selectList(namespace + ".orderCancelSearchList", cri);
	}
	
	@Override
	public List<OrderDTO> orderCancelSearchListPage(int page) throws Exception {
		if (page <= 0) {
			page = 1;
		}
		page = (page - 1) * 15;
		return sqlSession.selectList(namespace + ".orderCancelSearchListPage", page);
	}
	
	// DB ï¿½ï¿½ï¿½Ìºï¿½ ï¿½Ö´ï¿½ ï¿½ï¿½ï¿ ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿ ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½
	@Override
	public int orderCancelSearchpageCount() throws Exception {
		return sqlSession.selectOne(namespace + ".orderCancelSearchpageCount");
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
