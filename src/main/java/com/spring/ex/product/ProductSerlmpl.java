package com.spring.ex.product;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.util.FileUtilsPd;

@Service
public class ProductSerlmpl implements ProductSer {

	@Inject
	private ProductDAO dao;
	
	@Resource(name="FileUtilsPd")
	private FileUtilsPd FileUtilsPd;
	
	@Override
	public void AddProduct(ProductDTO dto, MultipartHttpServletRequest mpRequest) throws Exception {

		List<Map<String, Object>> list=FileUtilsPd.parseInsertFileInfo2(dto, mpRequest);
		int size =list.size();
		for(int i=0; i<size; i++) {
			dao.AddProduct(list.get(i));
		}
	}
	
	@Override
	public ProductDTO AddDetail(String pd_name) {
		return dao.AddDetail(pd_name);
	}
	
	@Override
	public void addDetail(ProductDTO dto, MultipartHttpServletRequest mpRequest) throws Exception{
		List<Map<String, Object>> list2=FileUtilsPd.parseInsertFileInfo3(dto, mpRequest);
		int size =list2.size();
		for(int i=0; i<size; i++) {
			dao.addDetail(list2.get(i));
		}
	}

}
