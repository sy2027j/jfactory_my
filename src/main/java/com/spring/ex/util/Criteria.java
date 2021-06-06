package com.spring.ex.util;

import org.springframework.web.util.UriComponentsBuilder;

public class Criteria {
	//������ ����, ������ ũ�� ������ �����ϴ� ��ü
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
	
	//����¡ó�� �����ϴ� ������
	//��������� �ƴ����� gettet�� setter�� �����ϸ� Mapper���� ���ٰ����ϴ�.
	//Mapper���� ����ϴ� �� #{pageStart}
	public int getPageStart() {
		return (this.page - 1)*this.pageSize;
	}
	
	//searchType, keyword �߰�
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
