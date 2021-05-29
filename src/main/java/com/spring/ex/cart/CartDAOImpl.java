package com.spring.ex.cart;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CartDAOImpl implements CartDAO {
	
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.mappers.cartMapper";
	
	
	@Override
	public void delete(CartDTO dto) throws Exception {
		sqlSession.delete(namespace+".delete");

	}
	
	@Override
	public void AddCart(CartDTO dto) throws Exception{
		sqlSession.insert(namespace+".AddCart",dto);
	}

	@Override
	public List<CartDTO> CartList(CartDTO dto) throws Exception{
		return sqlSession.selectList(namespace+".CartList",dto);
	}
}
