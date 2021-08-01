package com.littlePick.domain;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class ProductVO {
	
	//Product_tb 변수
	int product_num;
	int category_num;
	String product_name;
	String product_info;
	String product_detail;
	String product_image;
	int sale_price;
	int now_price;
	int in_price;
	int stock;
	int product_count;
	int delivery_num;
	boolean smallpack;
		
	//Cart_tb 변수
	private int cart_num;
	
	//Member_tb 변수 
	private int user_num; // 회원번호
	private String user_name; // 회원이름
	private String user_email; // 이메일
	private String user_password; // 비밀번호
	private String user_nickname; // 닉네임 >> 쇼핑몰에서 닉네임으로 활동
	private String user_phone; // 휴대폰
	private String user_address; // 주소
	private String user_address2;
	private String user_address3;
	private char user_gender; // 성별
	private String user_birth; // '1990-11-22' 형식으로
	private String user_regdate; // 가입일 sysdate()
	private int user_point; // 적립금
	private String user_image; // 프로필사진
	
	
	//Order_tb 변수 
	private int order_num;
	private String order_date;
	private int total_account;
	private String order_state;
	private String order_address;
	private String delivery_type; 
	
	//OrderDetail_tb 변수
	private int orderDetail_num;

	//OrderList_tb	
	public int order_count;
	
	//추가 생성 변수 ===============
	//장바구니 상품별 합계 : sale_price*product_count
	private int single_price;
	//주문목록 주문번호별 상품 종류 개수
	private int orderList_count;



	public int getProduct_num() {
		return product_num;
	}



	public void setProduct_num(int product_num) {
		this.product_num = product_num;
	}



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



	public String getProduct_info() {
		return product_info;
	}



	public void setProduct_info(String product_info) {
		this.product_info = product_info;
	}



	public String getProduct_detail() {
		return product_detail;
	}



	public void setProduct_detail(String product_detail) {
		this.product_detail = product_detail;
	}



	public String getProduct_image() {
		return product_image;
	}



	public void setProduct_image(String product_image) {
		this.product_image = product_image;
	}



	public int getSale_price() {
		return sale_price;
	}



	public void setSale_price(int sale_price) {
		this.sale_price = sale_price;
	}



	public int getNow_price() {
		return now_price;
	}



	public void setNow_price(int now_price) {
		this.now_price = now_price;
	}



	public int getIn_price() {
		return in_price;
	}



	public void setIn_price(int in_price) {
		this.in_price = in_price;
	}



	public int getStock() {
		return stock;
	}



	public void setStock(int stock) {
		this.stock = stock;
	}



	public int getProduct_count() {
		return product_count;
	}



	public void setProduct_count(int product_count) {
		this.product_count = product_count;
	}



	public int getDelivery_num() {
		return delivery_num;
	}



	public void setDelivery_num(int delivery_num) {
		this.delivery_num = delivery_num;
	}



	public boolean isSmallpack() {
		return smallpack;
	}



	public void setSmallpack(boolean smallpack) {
		this.smallpack = smallpack;
	}



	public int getCart_num() {
		return cart_num;
	}



	public void setCart_num(int cart_num) {
		this.cart_num = cart_num;
	}



	public int getUser_num() {
		return user_num;
	}



	public void setUser_num(int user_num) {
		this.user_num = user_num;
	}



	public String getUser_name() {
		return user_name;
	}



	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}



	public String getUser_email() {
		return user_email;
	}



	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}



	public String getUser_password() {
		return user_password;
	}



	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}



	public String getUser_nickname() {
		return user_nickname;
	}



	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}



	public String getUser_phone() {
		return user_phone;
	}



	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}



	public String getUser_address() {
		return user_address;
	}



	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}

	

	public String getUser_address2() {
		return user_address2;
	}



	public void setUser_address2(String user_address2) {
		this.user_address2 = user_address2;
	}



	public String getUser_address3() {
		return user_address3;
	}



	public void setUser_address3(String user_address3) {
		this.user_address3 = user_address3;
	}



	public char getUser_gender() {
		return user_gender;
	}



	public void setUser_gender(char user_gender) {
		this.user_gender = user_gender;
	}



	public String getUser_birth() {
		return user_birth;
	}



	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}



	public String getUser_regdate() {
		return user_regdate;
	}



	public void setUser_regdate(String user_regdate) {
		this.user_regdate = user_regdate;
	}



	public int getUser_point() {
		return user_point;
	}



	public void setUser_point(int user_point) {
		this.user_point = user_point;
	}



	public String getUser_image() {
		return user_image;
	}



	public void setUser_image(String user_image) {
		this.user_image = user_image;
	}



	public int getOrder_num() {
		return order_num;
	}



	public void setOrder_num(int order_num) {
		this.order_num = order_num;
	}



	public String getOrder_date() {
		return order_date;
	}



	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}



	public int getTotal_account() {
		return total_account;
	}



	public void setTotal_account(int total_account) {
		this.total_account = total_account;
	}



	public String getOrder_state() {
		return order_state;
	}



	public void setOrder_state(String order_state) {
		this.order_state = order_state;
	}



	public String getOrder_address() {
		return order_address;
	}



	public void setOrder_address(String order_address) {
		this.order_address = order_address;
	}



	public String getDelivery_type() {
		return delivery_type;
	}



	public void setDelivery_type(String delivery_type) {
		this.delivery_type = delivery_type;
	}



	public int getOrder_count() {
		return order_count;
	}



	public void setOrder_count(int order_count) {
		this.order_count = order_count;
	}



	public int getSingle_price() {
		return single_price;
	}



	public void setSingle_price(int single_price) {
		this.single_price = single_price;
	}



	public int getOrderDetail_num() {
		return orderDetail_num;
	}



	public void setOrderDetail_num(int orderDetail_num) {
		this.orderDetail_num = orderDetail_num;
	}



	public int getOrderList_count() {
		return orderList_count;
	}



	public void setOrderList_count(int orderList_count) {
		this.orderList_count = orderList_count;
	}



	

	
	
	
	
	

}
