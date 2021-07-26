package com.littlePick.domain;

public class PageMaker {
	
	 private PagingCriteria cri;
	 private int totalCount; 	//총 게시글 수
	 private int startPage; 	//면에 보여질 첫번째 페이지 번호, 시작 페이지 번호
     private int endPage;		//화면에 보여질 마지막 페이지 번호, 끝 페이지 번호
     private boolean prev;		//이번 버튼 생성 여부
     private boolean next;		//다음 버튼 생성 여부
     private int displayPageNum = 5;	//화면 하단에 보여지는 페이지 버튼의 수
	    
	    public PagingCriteria getCri() {
	        return cri;
	    }
	    public void setCri(PagingCriteria cri) {
	        this.cri = cri;
	    }
	    public int getTotalCount() {
	        return totalCount;
	    }
	    public void setTotalCount(int totalCount) {
	        this.totalCount = totalCount;
	        calcData(); //총 게시글 수 셋팅할 때 페이징 관련 버튼 계산 ?
	    }
	    
	    //페이징의 버튼들을 생성하는 계산식
	    
	    private void calcData() {
	    	//끝 페이지 번호 = (현재 페이지 번호/ 화면에 보여질 페이지 번호의갯수)*화면에 보여질 페이지 번호의 개수
	    	//Math.ceil(): 인자를 올림하는 함수
	        endPage = (int) (Math.ceil(cri.getPage() / (double) displayPageNum) * displayPageNum);
	        
	        /*
	         *  현재 페이지 번호 	페이지 번호의 갯수 		계산식			끝 페이지 번호 
	         *  	1				10		 Math.ceil(1/10)*10			10
	         *  	3				10		 Math.ceil(3/10)*10			10
	         *  	13				10		 Math.ceil(13/10)*10		20
	         *  	23				20		 Math.ceil(23/10)*10		40
	         */
	        
	        //시작페이지 번호 = (끝 페이지 번호 - 화면에 보여질 페이지 번호의 개수) + 1
	        startPage = (endPage - displayPageNum) + 1;
	        if(startPage <= 0) startPage = 1;
	        
	        /*
	         *  끝 페이지 번호 		페이지 번호의 갯수 		계산식		시작 페이지 번호 
	         *  	10				10		 		(10-10)+1		1
	         *  	30				10		 		(30-10)+1		21
	         *  	40				20				(40-20)+1		21
	         *  	20				5		 		(20-5)+1		16
	         */
	        
	        //마지막 페이지 번호 = 총 게시글 수 / 한 페이지당 보여줄 게시글의 수 
	        int tempEndPage = (int) (Math.ceil(totalCount / (double) cri.getPerPageNum()));
	        if (endPage > tempEndPage) {
	            endPage = tempEndPage;
	        }
	        
	        //이번 버튼 생성여부 = 시작 번호가 1이면 이전 버튼 생성 안함 
	        prev = startPage == 1 ? false : true;
	        //다음 번튼 생성여부 = 끝 페이지 번호 * 한 페이지당 보여줄 게시글의 갯수 < 총 게시글 수 이면 다음 버튼 생성 안함 
	        next = endPage * cri.getPerPageNum() < totalCount ? true : false;
	        
	        /*
	         * 끝 페이지 번호 	페이지당 게시글 수 	총 게시글 수	계산식	다음 버튼 생성여부
	         * 		7			10				65		7*10<65		false
	         * 		10			10				100		10*10<100	false
	         * 		10			10 				127		10*10<107	true
	         * 		20 			10				260		20*10<260	true
	         */
	        
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
	    public int getDisplayPageNum() {
	        return displayPageNum;
	    }
	    public void setDisplayPageNum(int displayPageNum) {
	        this.displayPageNum = displayPageNum;
	    }
}
