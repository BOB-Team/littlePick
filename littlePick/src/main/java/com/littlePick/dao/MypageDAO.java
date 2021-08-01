package com.littlePick.dao;

import java.util.List;

import com.littlePick.domain.CommunityVO;
public interface MypageDAO {
	public CommunityVO selectUser(int user_num);
	public List<CommunityVO> selectBoard(int user_num);
	public List<CommunityVO> selectComment(int user_num);
	public List<CommunityVO> selectqna(int user_num); //질문목록
	public CommunityVO selectQboard(int q_num);//질문상세
	public void insertQboard(CommunityVO vo);//질문입력
	public void updateCountQboard(int q_num);//업데이트 조회수
	public void settingUpdate(CommunityVO vo);//회원정보수정
	public int answerCount(int q_num);//큐앤에이 답글 수 count
	public List<CommunityVO> selectAnswer(int q_num);//큐앤에이 답글 리스트
	public List<CommunityVO> selectReview(int user_num);
	public CommunityVO selectOrder(int order_num);
	public List<CommunityVO> t_selectOrder(int user_num);
	public List<CommunityVO> selectOrderList(int order_num);
	public CommunityVO passcheck(CommunityVO vo);
	public void insertReview(CommunityVO vo);
}
