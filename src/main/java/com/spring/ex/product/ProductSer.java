package com.spring.ex.product;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;


@Service
public interface ProductSer {

	public void AddProduct(ProductDTO dto, MultipartHttpServletRequest mpRequest) throws Exception;
}
