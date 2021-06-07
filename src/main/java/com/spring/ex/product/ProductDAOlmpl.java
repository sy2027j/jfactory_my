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
	public void addDetail(ProductDTO dto) throws Exception{
		sqlSession.update(namespace+".AddDetail", dto);
	}
	
	@Override
	public List<ProductDTO> productlist(String pd_category) throws Exception{
		return sqlSession.selectList(namespace+".ProductListView", pd_category);
	}
	
	
	@Override
	public void ProductPhotoWrite(ProductDTO dto) throws Exception{
		sqlSession.insert(namespace+".ProductPhotoWrite", dto);
	}
	
	@Override
	public List<ProductDTO> ProductStockList() throws Exception{
		return sqlSession.selectList(namespace+".ProductStockList");
	}
	
	@Override
	public ProductDTO ProductTag1(String pd_tag1) throws Exception {
		return sqlSession.selectOne(namespace + ".ProductTag1", pd_tag1);
	}
	
	@Override
	public ProductDTO ProductTag2(String pd_tag2) throws Exception {
		return sqlSession.selectOne(namespace + ".ProductTag2", pd_tag2);
	}
	
	@Override
	public ProductDTO ProductTag3(String pd_tag3) throws Exception {
		return sqlSession.selectOne(namespace + ".ProductTag3", pd_tag3);
	}
	
	@Override
	public void ProductReviewCount(ProductDTO dto) throws Exception{
		sqlSession.update(namespace+".ProductReviewCount",dto);
	}
	
	@Override
	public void OrderProductSellCount(ProductDTO dto) throws Exception{
		sqlSession.update(namespace+".OrderProductSellCount",dto);
	}
	
	@Override
	public void CancelProductSellCount(ProductDTO dto) throws Exception{
		sqlSession.update(namespace+".CancelProductSellCount",dto);
	}
	
	@Override
	public void ProductDelete(ProductDTO dto) throws Exception{
		sqlSession.delete(namespace+".ProductDelete", dto);
	}
}
