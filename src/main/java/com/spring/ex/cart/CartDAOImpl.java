package com.spring.ex.cart;

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

}
