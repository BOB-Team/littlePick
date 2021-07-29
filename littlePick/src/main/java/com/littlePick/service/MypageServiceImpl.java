package com.littlePick.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.littlePick.dao.MypageDAOImple;
import com.littlePick.domain.CommunityVO;

@Service("mypageService") //가로안은 호출 별명 지정
public class MypageServiceImpl {
	
	@Autowired
	MypageDAOImple mypageDAO;

	public CommunityVO selectUser(int user_num){
		return mypageDAO.selectUser(user_num);
	}

	public List<CommunityVO> selectBoard(int user_num) {
		return mypageDAO.selectBoard(user_num);
	}
	
	public List<CommunityVO> selectComment(int user_num) {
		return mypageDAO.selectComment(user_num);
	}

	public List<CommunityVO> selectqna(int user_num) {
		return mypageDAO.selectqna(user_num);
	}

	public CommunityVO selectQboard(int q_num) {
		return mypageDAO.selectQboard(q_num);
	}

	public void insertQboard(CommunityVO vo) {
		mypageDAO.insertQboard(vo);
	}

	public void updateCountQboard(int q_num) {
		mypageDAO.updateCountQboard(q_num);
		
	}

	public void settingUpdate(CommunityVO vo) {
		mypageDAO.settingUpdate(vo);
		
	}

	public int answerCount(int q_num) {
		return mypageDAO.answerCount(q_num);
	}

	public List<CommunityVO> selectAnswer(int q_num) {
		return mypageDAO.selectAnswer(q_num);
	}

}
