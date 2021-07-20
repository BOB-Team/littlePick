package com.javassem.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.javassem.dao.MemberDAO;
import com.javassem.domain.MemberVO;
import com.javassem.service.MemberService;

//@Controller
//@RequestMapping("/user/")
public class MemberController {
	/*
	 * 
	 * // /user/아래, 여러개 있을 경우 변수로 받아서 처리하면 // 여러개를 같이 처리할 수 있다. // 아니면 userLogin,
	 * userJoin을 각각 처리해줘야 함 //@RequestMapping("{url}.do") //userJoin을 변수처리 ,, public
	 * String sample(@PathVariable String url) { //경로변수 스티커 부착 return "/user/"+url;
	 * }
	 * 
	 * 
	 * //서비스 변수 //@Autowired MemberService memberService;
	 * 
	 * //@RequestMapping("userInsert.do") //상위 /user/경로 안써도 됨 ,, public ModelAndView
	 * insert(MemberVO memberVO) {
	 * System.out.println("userInsert.do 요청환인");
	 * System.out.println(memberVO.getUserId());
	 * System.out.println(memberVO.getUserName());
	 * 
	 * 
	 * int result = memberService.userInsert(memberVO); String message =
	 * "가입되지 않았습니다."; if(result>0) message = memberVO.getUserName() +"님, 가입을 축하";
	 * 
	 * ModelAndView mv = new ModelAndView(); mv.setViewName("user/userJoin_ok");
	 * mv.addObject("result",result); mv.addObject("message", message); return mv; }
	 * 
	 * //@RequestMapping("login.do") public String login(MemberVO vo, HttpSession
	 * session) {
	 * 
	 * 1. 사용자 입력값 받아오기 MemberVO vo 2. DB에 해당 정보가 있는지 확인 3. 해당정보가 있다면 (로그인 성공이라면)
	 * /user/Main.jsp 뷰페이지 지정 4. 그렇지 않다면 (로그인 실패시) /user/userLogin.jsp 뷰페이지 지어
	 * 
	 * 
	 * MemberVO result = memberService.idCheck_Login(vo); //vo 변수 값 넘기고, 리턴값 변수
	 * result에 저장 if (result==null || result.getUserId()==null) { return
	 * "/user/userLogin"; } else { //로그인 성공 session.setAttribute("userName",
	 * result.getUserId()); session.setAttribute("sessionTime", new Date()); return
	 * "/user/Main"; } }
	 * 
	 * 
	 * //@RequestMapping(value="idCheck.do",
	 * produces="application/text;charset=UTF-8" ) //받을 때도 한글 처리
	 * //****************************** // ajax 요청에 대한 반환이므로 @ResponseBody 붙여줘야 한다.
	 * 페이지 전환 x !!!!! //@ResponseBody public String idCheck(MemberVO vo) { //String
	 * userId로 인자 하나만 잡아도 됨 MemberVO result = memberService.idCheck_Login(vo);
	 * String message="사용가능한 아이디입니다. "; if (result != null ) message =
	 * "이미 사용중이 아이디 입니다."; return message; //뷰페이지 이동 x }
	 */
}
