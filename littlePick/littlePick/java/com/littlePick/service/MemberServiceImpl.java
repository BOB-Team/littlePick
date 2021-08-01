package com.littlePick.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.littlePick.dao.MemberDAOImple;
import com.littlePick.domain.CommunityVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAOImple memberDAO;
	
	  //@Override 
	  //public int userInsert(MemberVO vo) { // TODO Auto-generated method
	 // stub return 0; }
	 

	public void userInsert(CommunityVO vo) {
		memberDAO.userInsert(vo);
	}

	public CommunityVO idCheck_Login(CommunityVO vo) {
		// TODO Auto-generated method stub
		return memberDAO.idCheck_Login(vo);
	}

	public CommunityVO selectUser(int usernum) {
		return memberDAO.selectUser(usernum);
	}
	

}
