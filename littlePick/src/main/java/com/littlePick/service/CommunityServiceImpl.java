package com.littlePick.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.littlePick.dao.CommunityDAOImple;
import com.littlePick.domain.CommunityVO;

@Service("comService") //가로안은 호출 별명 지정
public class CommunityServiceImpl {
	
	@Autowired
	CommunityDAOImple comDAO;
	
	public String sysdate() {
		return comDAO.sysdate(); // 넘어오는 값 처리 또는 리턴하기 
	}
	
	
	
	public CommunityVO selectBoard(CommunityVO vo) {
		
		return comDAO.selectBoard(vo);
	}



	public void insertBoard(CommunityVO vo) {
		comDAO.insertBoard(vo);
	}



	public int commentCount(int content_num) {
		
		return comDAO.commentCount(content_num);
	}



	public CommunityVO selectComment(int content_num) {
		
		return comDAO.selectComment(content_num);
	}
}
