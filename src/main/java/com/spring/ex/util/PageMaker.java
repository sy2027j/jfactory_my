package com.spring.ex.util;

public class PageMaker {
	private int totalCount;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	
	//Criteria�ȿ� page, pageSize ����
	private Criteria cri;
	
	//ȭ�鿡 �������� ���������� ��
	private int displayPageNum = 5;

	public PageMaker() {}
	public PageMaker(int totalCount, int startPage, int endPage, boolean prev, boolean next, Criteria cri,
			int displayPageNum) {
		super();
		this.totalCount = totalCount;
		this.startPage = startPage;
		this.endPage = endPage;
		this.prev = prev;
		this.next = next;
		this.cri = cri;
		this.displayPageNum = displayPageNum;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) { //����
		this.totalCount = totalCount;
		System.out.println("DB���� �� ���� ������ ���");
		//�� ���� ������ ������ ������ �ʿ��� ������ ���
		calcDate();
	}
	
	private void calcDate() {
		endPage = (int) (Math.ceil(cri.getPage()/(double)displayPageNum) * displayPageNum);
		startPage = (endPage - displayPageNum) +1;
		int tempEndPage = (int) (Math.ceil(totalCount/(double)cri.getPageSize()));
		if(endPage > tempEndPage) endPage = tempEndPage;
		prev = (startPage == 1? false:true);
		next = (endPage * cri.getPageSize() >= totalCount? false:true);
		System.out.println("����¡ó������ ���");
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public Criteria getCri() {
		return cri;
	}

	public void setCri(Criteria cri) { //����
		this.cri = cri;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}
	
	@Override
	public String toString() {
		return "PageMaker [totalCount=" + totalCount + ", startPage=" + startPage + ", endPage=" + endPage + ", prev="
				+ prev + ", next=" + next + ", cri=" + cri + ", displayPageNum=" + displayPageNum + "]";
	}	
}
