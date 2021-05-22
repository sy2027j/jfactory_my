package com.spring.ex.util;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.product.ProductDTO;
import com.spring.ex.review.ReviewDTO;


@Component("FileUtilsPd")
public class FileUtilsPd {
	private static final String filePath = "C:\\Users\\jyi\\jsy-workspace\\jf_ff\\src\\main\\webapp\\resources\\image\\product\\"; // 파일이 저장될 위치
	
	public List<Map<String, Object>> parseInsertFileInfo2(ProductDTO dto, 
			MultipartHttpServletRequest mpRequest) throws Exception{
		
		/*
			Iterator은 데이터들의 집합체? 에서 컬렉션으로부터 정보를 얻어올 수 있는 인터페이스입니다.
			List나 배열은 순차적으로 데이터의 접근이 가능하지만, Map등의 클래스들은 순차적으로 접근할 수가 없습니다.
			Iterator을 이용하여 Map에 있는 데이터들을 while문을 이용하여 순차적으로 접근합니다.
		*/
		
		Iterator<String> iterator = mpRequest.getFileNames();
		
		MultipartFile multipartFile = null;
		String originalFileName = null;
		String originalFileExtension = null;
		String storedFileName = null;
		String conoriginalFileName=null;
		String conoriginalFileExtension=null;
		String constoredFileName=null;
		
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
		Map<String, Object> listMap = null;
		
		int pd_no = dto.getPd_no();
		String pd_name = dto.getPd_name();
		String pd_simplecontent = dto.getPd_simplecontent();
		int pd_price = dto.getPd_price();
		int pd_hit = dto.getPd_hit();
		String pd_category=dto.getPd_category();
		String pd_tag1 = dto.getPd_tag1();
		String pd_tag2 = dto.getPd_tag2();
		String pd_tag3 = dto.getPd_tag3();
		String pd_tag4 = dto.getPd_tag4();
		String pd_tag5 = dto.getPd_tag5();
		
		File file = new File(filePath);
		if(file.exists() == false) {
			file.mkdirs();
		}
		
		while(iterator.hasNext()) {
			multipartFile = mpRequest.getFile(iterator.next());
			if(multipartFile.isEmpty() == false) {
				originalFileName = multipartFile.getOriginalFilename();
				conoriginalFileName = multipartFile.getOriginalFilename();
				originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
				conoriginalFileExtension =conoriginalFileName.substring(conoriginalFileName.lastIndexOf("."));
				storedFileName = getRandomString() + originalFileExtension;
				constoredFileName=getRandomString()+conoriginalFileExtension;
				
				file = new File(filePath + storedFileName);
				file=new File(filePath+constoredFileName);
				multipartFile.transferTo(file);
				listMap = new HashMap<String, Object>();
				listMap.put("pd_name", pd_name);
				listMap.put("pd_simplecontent", pd_simplecontent);
				listMap.put("pd_price", pd_price);
				listMap.put("pd_main_file", originalFileName);
				listMap.put("pd_main_stored_file", storedFileName);
				listMap.put("pd_con_file", conoriginalFileName);
				listMap.put("pd_con_stored_file", constoredFileName);
				listMap.put("pd_hit", pd_hit);
				listMap.put("pd_category", pd_category);
				listMap.put("pd_tag1", pd_tag1);
				listMap.put("pd_tag2", pd_tag2); 
				listMap.put("pd_tag3", pd_tag3);
				listMap.put("pd_tag4", pd_tag4);
				listMap.put("pd_tag5", pd_tag5);
				list.add(listMap);
			}
		}
		return list;
		
	}
	
	public static String getRandomString() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
}