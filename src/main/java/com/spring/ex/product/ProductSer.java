package com.spring.ex.product;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.util.Criteria;

@Service
public interface ProductSer {

	public void AddProduct(ProductDTO dto, MultipartHttpServletRequest mpRequest) throws Exception;

	public ProductDTO AddDetail(String pd_name);

	public void addDetail(ProductDTO dto) throws Exception;

	public List<ProductDTO> productlist(String pd_category) throws Exception;

	public List<ProductDTO> searchprolist(Criteria cri) throws Exception;

	public void ProductPhotoWrite(ProductDTO dto) throws Exception;

	public List<ProductDTO> ProductStockList(Criteria cri) throws Exception;

	public int adminproductpageCount() throws Exception;

	public ProductDTO ProductTag2(String pd_tag2) throws Exception;

	public ProductDTO ProductTag3(String pd_tag3) throws Exception;

	public ProductDTO ProductTag4(String pd_tag4) throws Exception;
	
	public ProductDTO ProductTag5(String pd_tag5) throws Exception;
	
	public void ProductReviewCount(ProductDTO dto) throws Exception;

	public void OrderProductSellCount(ProductDTO dto) throws Exception;

	public void CancelProductSellCount(ProductDTO dto) throws Exception;

	public void ProductDelete(ProductDTO dto) throws Exception;
}
