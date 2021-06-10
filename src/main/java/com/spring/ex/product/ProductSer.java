package com.spring.ex.product;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.util.Criteria;

@Service
public interface ProductSer {

	public void AddProduct(ProductDTO dto, MultipartHttpServletRequest mpRequest) throws Exception;

	public ProductDTO AddDetail(String pd_name);

	public void addDetail(ProductDTO dto) throws Exception;

	public List<ProductDTO> productlist(String pd_category) throws Exception;
	
	public List<ProductDTO> Product_statisticslist(Criteria cri) throws Exception;

	public List<ProductDTO> searchprolist(Criteria cri) throws Exception;

	public void ProductPhotoWrite(ProductDTO dto) throws Exception;

	public List<ProductDTO> ProductStockList(Criteria cri) throws Exception;

	public int adminproductpageCount() throws Exception;

	public ProductDTO ProductTag2(String pd_tag2) throws Exception;

	public ProductDTO ProductTag3(String pd_tag3) throws Exception;

	public List<ProductDTO> ProductTag4(String pd_tag4) throws Exception;
	
	public ProductDTO ProductTag5(String pd_tag5) throws Exception;
	
	public void ProductReviewCount(ProductDTO dto) throws Exception;

	public void OrderProductSellCount(HashMap<String, Object> OrderProductSellCountMap) throws Exception;

	public void CancelProductSellCount(ProductDTO dto) throws Exception;

	public void ProductDelete(ProductDTO dto) throws Exception;
	
	public List<Map<String, Object>> ProductReviewScore(String pd_name) throws Exception;
	
	public List<ProductDTO> IndexBest() throws Exception;
	
	public List<ProductDTO> BestProduct(String pd_category) throws Exception;
	
	public List<ProductDTO> BestProductAll() throws Exception;
	
	public List<ProductDTO> CategoryProduct(String pd_category) throws Exception;
}
