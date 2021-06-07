package com.spring.ex.product;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public interface ProductDAO {
	
	public void AddProduct(Map<String, Object> map) throws Exception;

	public ProductDTO AddDetail(String pd_name);
	
	public void addDetail(ProductDTO dto) throws Exception;

	public List<ProductDTO> productlist(String pd_category) throws Exception;
	
	public void ProductPhotoWrite(ProductDTO dto) throws Exception;
	
	public List<ProductDTO> ProductStockList() throws Exception;
	
	public ProductDTO ProductTag1(String pd_tag1) throws Exception;
	
	public ProductDTO ProductTag2(String pd_tag2) throws Exception;
	
	public ProductDTO ProductTag3(String pd_tag3) throws Exception;
	
	public void ProductReviewCount(ProductDTO dto) throws Exception;
	
	public void OrderProductSellCount(ProductDTO dto) throws Exception;
	
	public void CancelProductSellCount(ProductDTO dto) throws Exception;
	
	public void ProductDelete(ProductDTO dto) throws Exception;
}
