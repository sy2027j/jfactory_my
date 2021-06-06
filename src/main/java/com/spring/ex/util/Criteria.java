package com.spring.ex.util;

import org.springframework.web.util.UriComponentsBuilder;

public class Criteria {
	//페이지 정보, 페이지 크기 정보를 저장하는 객체
	private int page;
	private int pageSize;
	
	private String searchType;
	private String keyword;
	
	public Criteria() {
		this.page = 1;
		this.pageSize = 15;
		this.setSearchType(null);
		this.setKeyword(null);
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		if(page <=0) {
			this.page = 1;
			return;
		}
		this.page = page;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		if(pageSize <=0 || pageSize > 100) {
			this.pageSize = 15;			
			return;
		}
		this.pageSize = pageSize;			
	}
	
	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}	
	
	//페이징처리 시작하는 값생성
	//멤버변수가 아니지만 gettet와 setter를 생성하면 Mapper에서 접근가능하다.
	//Mapper에서 사용하는 법 #{pageStart}
	public int getPageStart() {
		return (this.page - 1)*this.pageSize;
	}
	
	//searchType, keyword 추가
		public String makeQuery() {
			UriComponentsBuilder uriComponentsBuilder = UriComponentsBuilder.newInstance()
					.queryParam("page", page)
					.queryParam("pageSize", this.pageSize);
					
			if (searchType!=null) {
				uriComponentsBuilder
						.queryParam("searchType", this.searchType)
						.queryParam("keyword", this.keyword);
			}
			return uriComponentsBuilder.build().encode().toString();
		}
	
	//toString()
	@Override
	public String toString() {
		return "Criteria [page=" + page + ", pageSize=" + pageSize + ", searchType=" + searchType + ", keyword="
				+ keyword + "]";
	}

}
