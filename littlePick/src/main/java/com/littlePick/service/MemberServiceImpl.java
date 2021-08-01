package com.littlePick.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.littlePick.dao.MemberDAOImple;
import com.littlePick.domain.CommunityVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAOImple memberDAO;
	 

	public void userInsert(CommunityVO vo) {
		memberDAO.userInsert(vo);
	}
	

	public CommunityVO adminidCheck_Login(CommunityVO vo) {
		return memberDAO.adminidCheck_Login(vo);
	}

	public CommunityVO selectUser(int usernum) {
		return memberDAO.selectUser(usernum);
	}

	public CommunityVO emailCheck_Login(CommunityVO vo) { //이메일 db에서 확인
		return memberDAO.emailCheck_Login(vo);
	}
	public CommunityVO nicknameCheck_Login(CommunityVO vo) { //닉네임 디비에서 확인
		return memberDAO.nicknameCheck_Login(vo);
	}

}
