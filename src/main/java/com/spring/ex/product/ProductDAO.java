package com.spring.ex.product;

import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public interface ProductDAO {
	
	public void AddProduct(Map<String, Object> map) throws Exception;
}
