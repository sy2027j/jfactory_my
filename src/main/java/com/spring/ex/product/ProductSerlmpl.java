package com.spring.ex.product;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.util.Criteria;
import com.spring.ex.util.FileUtilsPd;

@Service
public class ProductSerlmpl implements ProductSer {

	@Inject
	private ProductDAO dao;

	@Resource(name = "FileUtilsPd")
	private FileUtilsPd FileUtilsPd;

	@Override
	public void AddProduct(ProductDTO dto, MultipartHttpServletRequest mpRequest) throws Exception {

		List<Map<String, Object>> list = FileUtilsPd.parseInsertFileInfo2(dto, mpRequest);
		int size = list.size();
		for (int i = 0; i < size; i++) {
			dao.AddProduct(list.get(i));
		}
	}

	@Override
	public ProductDTO AddDetail(String pd_name) {
		return dao.AddDetail(pd_name);
	}

	@Override
	public void addDetail(ProductDTO dto) throws Exception {
		dao.addDetail(dto);
	}

	@Override
	public List<ProductDTO> productlist(String pd_category) throws Exception {
		return dao.productlist(pd_category);
	} 
	 
	@Override
	public List<ProductDTO> Product_statisticslist(Criteria cri) throws Exception {
		return dao.Product_statisticslist(cri);
	}

	@Override
	public List<ProductDTO> searchprolist(Criteria cri) throws Exception {
		return dao.searchprolist(cri);
	}

	@Override
	public void ProductPhotoWrite(ProductDTO dto) throws Exception {
		dao.ProductPhotoWrite(dto);
	}

	@Override
	public List<ProductDTO> ProductStockList(Criteria cri) throws Exception {
		return dao.ProductStockList(cri);
	}

	@Override
	public int adminproductpageCount() throws Exception {
		return dao.adminproductpageCount();
	}

	@Override
	public ProductDTO ProductTag2(String pd_tag2) throws Exception {
		return dao.ProductTag2(pd_tag2);
	}

	@Override
	public ProductDTO ProductTag3(String pd_tag3) throws Exception {
		return dao.ProductTag3(pd_tag3);
	}
	
	@Override
	public List<ProductDTO> ProductTag4(String pd_tag4) throws Exception {
		return dao.ProductTag4(pd_tag4);
	}

	@Override
	public ProductDTO ProductTag5(String pd_tag5) throws Exception {
		return dao.ProductTag5(pd_tag5);
	}

	@Override
	public void ProductReviewCount(ProductDTO dto) throws Exception {
		dao.ProductReviewCount(dto);
	}

	@Override
	public void OrderProductSellCount(HashMap<String, Object> OrderProductSellCountMap) throws Exception {
		dao.OrderProductSellCount(OrderProductSellCountMap);
	}

	@Override
	public void CancelProductSellCount(ProductDTO dto) throws Exception {
		dao.CancelProductSellCount(dto);
	}

	@Override
	public void ProductDelete(ProductDTO dto) throws Exception {
		dao.ProductDelete(dto);
	}

	@Override
	public List<Map<String, Object>> ProductReviewScore(String pd_name) throws Exception {
		return dao.ProductReviewScore(pd_name);
	}
	
	@Override
	public List<ProductDTO> IndexBest() throws Exception{
		return dao.IndexBest();
	}
	
	@Override
	public List<ProductDTO> BestProduct(String pd_category) throws Exception{
		return dao.BestProduct(pd_category);
	}
	
	@Override
	public List<ProductDTO> BestProductAll() throws Exception{
		return dao.BestProductAll();
	}
	
	@Override
	public List<ProductDTO> CategoryProduct(String pd_category) throws Exception{
		return dao.CategoryProduct(pd_category);
	}
	
	@Override
	public ProductDTO RandomProduct() throws Exception{
		return dao.RandomProduct();
	}
	
	@Override
	public List<ProductDTO> RandomProduct2() throws Exception{
		return dao.RandomProduct2();
	}
}
