package com.littlePick.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.littlePick.domain.CommunityVO;
import com.littlePick.service.MemberServiceImpl;

@Controller
public class MemberController {
			
	//서비스 변수 
	@Autowired 
	MemberServiceImpl memberService;
	
	
	 @RequestMapping("{url}.do")
	 public String sample(@PathVariable String url) {
		 return url;
	 }
	 
	
	@RequestMapping("1_register.do") //회원가입 보기
	public void register(){
	}

	@RequestMapping("userInsert_save.do") //회원가입 입력
	public String registerSave(CommunityVO vo) {
		memberService.userInsert(vo);
		return "redirect:1_login.do";//로그인 페이지로 이동
	}
	
	
	
	//이메일 중복처리
	@RequestMapping(value="emailCheck.do", produces="application/text;charset=UTF-8") //한글처리
	@ResponseBody //Ajax인 경우
	public String emailCheck(CommunityVO vo) {
		CommunityVO result = memberService.emailCheck_Login(vo);
		String message = "사용가능한 이메일입니다";
		if( result != null) message="이미 가입된 이메일입니다";
		return message;
	}
	
	//닉네임 중복처리
	@RequestMapping(value="nicknameCheck.do", produces="application/text;charset=UTF-8") //한글처리
	@ResponseBody //Ajax인 경우
	public String nicknameCheck(CommunityVO vo) {
		CommunityVO result = memberService.nicknameCheck_Login(vo);
		String message = "사용가능한 닉네임입니다";
		if( result != null) message="이미 사용중인 닉네임입니다";
		return message;
		}
	
	
	@RequestMapping("1_login.do") // 로그인 페이지 보기
	public void Login(){
	}
	
	
	@RequestMapping("login_go.do")
	public String login_go(CommunityVO vo, HttpSession session) {// 아이디, 비밀번호 확인
		CommunityVO result = memberService.emailCheck_Login(vo);// DB에 해당 정보가 있는지 확인
		
		if(result==null || result.getUser_email()==null) { //없음
			return "redirect:1_login_error.do"; //다시 로그인페이지로 이동 (불일치 페이지로 가도되고)
		}else { // 로그인 성공
			session.setAttribute("user_num", result.getUser_num()); //회원번호를 session에 저장
			session.setAttribute("sessionTime", new Date()); //세션 생김
		
			return "redirect:main.do"; //메인페이지로 이동(헤더 새로운 거)
		}
	}
	
	@RequestMapping("login_admin_go.do")
	public String login_admin_go(CommunityVO vo, HttpSession session) {// 아이디, 비밀번호 확인
		CommunityVO result = memberService.adminidCheck_Login(vo);// DB에 해당 정보가 있는지 확인
		
		if(result==null || result.getAdmin_id()==null) { //없음
			return "redirect:1_login_admin_error.do"; //다시 로그인페이지로 이동 (불일치 페이지로 가도되고)
		}else { // 로그인 성공
			session.setAttribute("admin_id", result.getAdmin_id()); //회원번호를 session에 저장
			session.setAttribute("sessionTime", new Date()); //세션 생김
		
			return "redirect:main.do"; //메인페이지로 이동(헤더 새로운 거)
		}
	}
	
	@RequestMapping("1_logout.do") //로그아웃
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:main.do";
	}
	
	/*
	 * @RequestMapping("ddd.do") public void header(HttpSession session, Model m) {
	 * int usernum = (int)session.getAttribute("user_num");
	 * System.out.println(usernum); CommunityVO member =
	 * memberService.selectUser(usernum); m.addAttribute("member", member); }
	 */
	
	
}
