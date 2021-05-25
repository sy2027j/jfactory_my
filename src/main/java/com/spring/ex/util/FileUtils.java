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

import com.spring.ex.review.ReviewDTO;


@Component("fileUtils")
public class FileUtils {
	private static final String filePath = "C:\\Users\\jyi\\jsy-workspace\\jf_ff\\src\\main\\webapp\\resources\\image\\123\\"; // 파일이 저장될 위치
	
	public List<Map<String, Object>> parseInsertFileInfo(ReviewDTO dto, 
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
		
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
		Map<String, Object> listMap = null;
		
		int re_no = dto.getRe_no();
		String re_title = dto.getRe_title();
		String mem_id = dto.getMem_id();
		String re_score = dto.getRe_score();
		String re_content = dto.getRe_content();
		int re_count = dto.getRe_count();
		String pd_name=dto.getPd_name();
		
		File file = new File(filePath);
		if(file.exists() == false) {
			file.mkdirs();
		}
		
		while(iterator.hasNext()) {
			multipartFile = mpRequest.getFile(iterator.next());
			if(multipartFile.isEmpty() == false) {
				originalFileName = multipartFile.getOriginalFilename();
				originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
				storedFileName = getRandomString() + originalFileExtension;
				
				file = new File(filePath + storedFileName);
				multipartFile.transferTo(file);
				listMap = new HashMap<String, Object>();
				listMap.put("mem_id", mem_id);
				listMap.put("re_title", re_title);
				listMap.put("re_score", re_score);
				listMap.put("re_content", re_content);
				listMap.put("re_count", re_count);
				listMap.put("re_org_file", originalFileName);
				listMap.put("re_stored_file", storedFileName);
				listMap.put("pd_name", pd_name);
				list.add(listMap);
			}else {
				listMap = new HashMap<String, Object>();
				listMap.put("mem_id", mem_id);
				listMap.put("re_title", re_title);
				listMap.put("re_score", re_score);
				listMap.put("re_content", re_content);
				listMap.put("re_count", re_count);
				listMap.put("re_org_file", originalFileName);
				listMap.put("re_stored_file", storedFileName);
				listMap.put("pd_name", pd_name);
				list.add(listMap);
			}
			
		}
		return list;
	}
	
	public static String getRandomString() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
}