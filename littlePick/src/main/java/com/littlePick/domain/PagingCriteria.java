package com.littlePick.domain;

public class PagingCriteria {
	
	ProductVO vo = new ProductVO();
	
	int category_num = vo.getCategory_num();
	String product_name = vo.getProduct_name();
	

	public int getCategory_num() {
		return category_num;
	}

	public void setCategory_num(int category_num) {
		this.category_num = category_num;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	
	//========================================================

	private int page; 		//현재 페이지 번호
    private int perPageNum;	//한 페이지당 보여줄 개시글의 갯수
    
    public int getPageStart() { //특정 페이지의 게시글 시작 번호, 게시글 시작행 번호
        return (this.page-1)*perPageNum;
    }
    
    /*
     * 	page		perPageNum		계산식		getPageStart
     * 	5				10			(5-1)*10		40
     * 	3				5			(3-1)*5			10
     * 	15				10			(15-1)*10		140
     */
    
    //기본 생성자
    public PagingCriteria() {
        this.page = 1;
        this.perPageNum = 12; //9개로하면 에러 발생? 왜? 
    }
    
    //현재 페이지 번호
    public int getPage() { 
        return page;
    }
    
    //페이지가 음수가 되면 1페이지를 나타냄
    public void setPage(int page) {
        if(page <= 0) {
            this.page = 1;
        } else {
            this.page = page;
        }
    }
    
    //한 페이지당 보여줄 게시글의 갯수
    public int getPerPageNum() {
        return perPageNum;
    }
    
    //페이지당 보여줄 게시글 수가 변하지 않게 설정?
    public void setPerPageNum(int pageCount) {
        int cnt = this.perPageNum;
        if(pageCount != cnt) {
            this.perPageNum = cnt;
        } else {
            this.perPageNum = pageCount;
        }
    }

}
