package com.spring.ex.product;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAOlmpl implements ProductDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.spring.ex.mappers.testMapper";
	
	@Override
	public void AddProduct(Map<String, Object> map) throws Exception {
		sqlSession.insert(namespace+".AddProduct", map);
	}
	
	@Override
	public ProductDTO AddDetail(String pd_name) {
		return sqlSession.selectOne(namespace+".ProductView", pd_name);
	}

	@Override
	public void addDetail(Map<String, Object> map) throws Exception{
		sqlSession.update(namespace+".AddDetail", map);
	}
}
