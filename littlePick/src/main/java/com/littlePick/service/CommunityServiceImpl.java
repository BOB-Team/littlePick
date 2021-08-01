package com.littlePick.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.littlePick.dao.CommunityDAOImple;
import com.littlePick.domain.CommunityVO;

@Service("comService") //가로안은 호출 별명 지정
public class CommunityServiceImpl {
	
	@Autowired
	CommunityDAOImple comDAO;
	
	public CommunityVO selectBoard(CommunityVO vo) {
		
		return comDAO.selectBoard(vo);
	}



	public void insertBoard(CommunityVO vo,int user_num) {
		comDAO.insertBoard(vo,user_num);
	}



	public int commentCount(int content_num) {
		
		return comDAO.commentCount(content_num);
	}



	public List<CommunityVO> selectComment(int content_num) {
		
		return comDAO.selectComment(content_num);
	}



	public List<CommunityVO> selectCommunity(String board_name,String selectOrder) {
		return comDAO.selectCommunity(board_name,selectOrder);
	}

	public List<CommunityVO> select3Community(String board_name) {
		return comDAO.select3Community(board_name);
	}


	public void insertComment(CommunityVO vo,int user_num) {
		comDAO.insertComment(vo,user_num);
		
	}



	public List<CommunityVO> communitySearch(String searchCondition, String searchKeyword) {
		
		return comDAO.communitySearch(searchCondition,searchKeyword);
	}



	public void boardCountUp(int content_num) { //조회수 1 증가
		comDAO.boardCountUp(content_num);
		
	}



	public void boarddelete(int content_num) {
		comDAO.boarddelete(content_num);
		
	}



	public void boardmodify(CommunityVO vo) {
		comDAO.boardmodify(vo);
		
	}







}
