package com.littlePick.service;

import java.util.List;

import com.littlePick.domain.CommunityVO;

public interface MypageService {
	
	public CommunityVO selectUser(int user_num);
	public List<CommunityVO> selectBoard(int user_num);
	public List<CommunityVO> selectComment(int user_num);
	public List<CommunityVO> selectqna(int user_num); //질문목록
	public CommunityVO selectQboard(int q_num); //질문 상세 가져오기
	public void insertQboard(CommunityVO vo); //질문 insert
	public void updateCountQboard(int q_num); //조회수 update
	public void settingUpdate(CommunityVO vo); //회원정보수정
	public int answerCount(int q_num);//문의 답글 수
	public List<CommunityVO> selectAnswer(int q_num);//문의 답글 목록
	public List answerCount2(int user_num);
	public List<CommunityVO> selectReview(int user_num); //리뷰리스트
	public CommunityVO selectOrder(int order_num);
	public List<CommunityVO> t_selectOrder(int user_num);
	public List<CommunityVO> selectOrderList(int order_num);
	public CommunityVO passcheck(CommunityVO vo);
}
