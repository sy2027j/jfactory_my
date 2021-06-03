package com.spring.ex.util;

public class Criteria {
	//������ ����, ������ ũ�� ������ �����ϴ� ��ü
	private int page;
	private int pageSize;
	
	public Criteria() {
		this.page = 1;
		this.pageSize = 10;
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
			this.pageSize = 10;			
			return;
		}
		this.pageSize = pageSize;			
	}
	
	//����¡ó�� �����ϴ� ������
	//��������� �ƴ����� gettet�� setter�� �����ϸ� Mapper���� ���ٰ����ϴ�.
	//Mapper���� ����ϴ� �� #{pageStart}
	public int getPageStart() {
		return (this.page - 1)*this.pageSize;
	}
	
	//toString()
	@Override
	public String toString() {
		return "Criteria [page=" + page + ", pageSize=" + pageSize + "]";
	}	
}
