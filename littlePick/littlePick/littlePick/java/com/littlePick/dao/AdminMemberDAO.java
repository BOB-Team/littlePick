package com.littlePick.dao;

import java.util.List;

import com.littlePick.domain.AdminVO;

public interface AdminMemberDAO {
	
	//회원 
	public List<AdminVO> memberList();

	public  void insertAdminMember(AdminVO vo);

	public  AdminVO viewAdminMember(AdminVO vo);

	public  void deleteAdminMember(AdminVO vo);

	public  void updateAdminMember(AdminVO vo);

	public  boolean checkPw(String user_email, String user_password);

	//상품 
	public List<AdminVO> productList();

	public void insertAdminMember1(AdminVO vo);

	public AdminVO viewAdminMember1(AdminVO vo);

	public void deleteAdminMember1(AdminVO vo);

	public void updateAdminMember1(AdminVO vo);
	
	public AdminVO product(AdminVO vo);


		
	
	




		



	

}
