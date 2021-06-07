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
	public void addDetail(ProductDTO dto) throws Exception{
		dao.addDetail(dto);
	}
	
	@Override
	public List<ProductDTO> productlist(String pd_category) throws Exception{
		return dao.productlist(pd_category);
	}
	
	@Override
	public void ProductPhotoWrite(ProductDTO dto) throws Exception{
		dao.ProductPhotoWrite(dto);
	}
	
	@Override
	public List<ProductDTO> ProductStockList() throws Exception{
		return dao.ProductStockList();
	}
	
	@Override
	public ProductDTO ProductTag1(String pd_tag1) throws Exception {
		return dao.ProductTag1(pd_tag1);
	}
	
	@Override
	public ProductDTO ProductTag2(String pd_tag2) throws Exception{
		return dao.ProductTag2(pd_tag2);
	}
	
	@Override
	public ProductDTO ProductTag3(String pd_tag3) throws Exception {
		return dao.ProductTag3(pd_tag3);
	}
	
	@Override
	public void ProductReviewCount(ProductDTO dto) throws Exception{
		dao.ProductReviewCount(dto);
	}
	
	@Override
	public void OrderProductSellCount(ProductDTO dto) throws Exception{
		dao.OrderProductSellCount(dto);
	}
	
	@Override
	public void CancelProductSellCount(ProductDTO dto) throws Exception{
		dao.CancelProductSellCount(dto);
	}
	
	@Override
	public void ProductDelete(ProductDTO dto) throws Exception{
		dao.ProductDelete(dto);
	}
}
