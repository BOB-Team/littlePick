package com.littlePick.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.littlePick.domain.CommunityVO;

@Repository("comDAO") //(가로안은 호출시 별명)
public class CommunityDAOImple {
	
	@Autowired //자동으로 껴들기 
	SqlSessionTemplate sqlSession; //root-context에서 지정한 값
	
	public String sysdate() {
		return sqlSession.selectOne("com.getDate"); //Mapper에서 받아오기 		
		
	}

	public CommunityVO selectBoard(CommunityVO vo) {
		return sqlSession.selectOne("com.selectBoard",vo);
	}

	public void insertBoard(CommunityVO vo) {
		sqlSession.selectOne("com.insertBoard", vo);
	}

	public int commentCount(int content_num) {
		return sqlSession.selectOne("com.commentCount",content_num);
	}
	
	public List<CommunityVO> selectComment(int content_num) {
		return sqlSession.selectList("com.selectComment",content_num);
	}

	public List<CommunityVO> selectCommunity(String board_name,String selectOrder) {
		HashMap map = new HashMap();
		map.put("board_name",board_name);
		map.put("selectOrder",selectOrder); //최신순, 조회순
		return sqlSession.selectList("com.selectCommunity",map);
	}
	
	public List<CommunityVO> select3Community(String board_name) {
		return sqlSession.selectList("com.select3Community",board_name);
	}

	public void insertComment(CommunityVO vo) {
		sqlSession.selectOne("com.insertComment", vo);
		
	}

	public List<CommunityVO> communitySearch(String searchCondition, String searchKeyword) {
		HashMap map = new HashMap();
		map.put("searchCondition",searchCondition);
		map.put("searchKeyword",searchKeyword);
		return sqlSession.selectList("com.communitySearch",map);
	}

	public void boardCountUp(int content_num) { //조회수 1 증가
		sqlSession.selectOne("com.boardCountUp", content_num);
		
	}
	
}