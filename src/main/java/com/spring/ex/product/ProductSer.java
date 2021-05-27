package com.spring.ex.product;


import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;


@Service
public interface ProductSer {

	public void AddProduct(ProductDTO dto, MultipartHttpServletRequest mpRequest) throws Exception;

	public ProductDTO AddDetail(String pd_name);
	
	public void addDetail(ProductDTO dto, MultipartHttpServletRequest mpRequest) throws Exception;

	public List<ProductDTO> productlist(String pd_category) throws Exception;

	public void ProductPhotoWrite(ProductDTO dto) throws Exception;
}
