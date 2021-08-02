package com.littlePick.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

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
	System.out.println("회원가입 페이지 이동");
		 
	}
	
	@RequestMapping("userInsert_save.do") //회원가입 입력
	public String registerSave(CommunityVO vo) {
		System.out.println(vo.getUser_name());
		System.out.println("회원가입 입력하러감");
		memberService.userInsert(vo);
		System.out.println("회원가입 입력 완료");
	return "redirect:login.do"; //바로 로그인 페이지로 이동하거나, 회원가입 완료 써있고 아래 로그인 나온 페이지로 이동
	//비밀번호, 비밀번호 확인 동일한지 확인 필요함 ((강사님 코드 참고해서 하면 될거같음))
	//이메일과 닉네임은 디비에 저장된 내용과 동일하면 안됨. ((강사님 코드 참고해서 동일한경우 안된다는 메시지 띄워줘야함))
	//버튼 만들어서 누르면 사용 가능한 이메일입니다. 사용 불가합니다. 띄울 수도 있고!
}
	
	@RequestMapping("1_login.do") // 로그인 페이지 보기
	public void Login(){
	}
	
	@RequestMapping("login_go.do")
	public String login_go(CommunityVO vo, HttpSession session) {// 아이디, 비밀번호 확인
		CommunityVO result = memberService.idCheck_Login(vo);// DB에 해당 정보가 있는지 확인
		
		if(result==null || result.getUser_email()==null) { //없음
			return "redirect:1_login_error.do"; //다시 로그인페이지로 이동 (불일치 페이지로 가도되고)
		}else { // 로그인 성공
			session.setAttribute("user_num", result.getUser_num()); //회원번호를 session에 저장
			session.setAttribute("sessionTime", new Date()); //세션 생김
		
			return "redirect:main.do?smallpack=1"; //메인페이지로 이동(헤더 새로운 거)
		}
	}
	
	@RequestMapping(".do")
	public void header(HttpSession session, Model m) {
		int usernum = (int)session.getAttribute("user_num");
		System.out.println(usernum);
		CommunityVO member = memberService.selectUser(usernum);
		m.addAttribute("member", member);
	}
	
	
 
	/*
	 * @RequestMapping("userInsert_save.do") //로그인 입력 public String
	 * userLoginSave(CommunityVO vo) { System.out.println(vo.getUser_name());
	 * System.out.println("로그인 하러감"); //memberService.idCheck_Login(vo);
	 * System.out.println("로그인 완료"); return "redirect:main.do"; }
	 */

	//이메일, 비밀번호 데이터 베이스에 저장되어있는것과 동일한지 select문 이용해서 확인하고
	//있는 경우 =>> 메인화면으로 이동
	//없는 경우 =>> 다시 로그인 페이지 보여주기 (로그인 부분 위쪽에 이메일 또는 비밀번호가 일치하지 않습니다.)

	
	
	/*
	 * 
	 * // /user/아래, 여러개 있을 경우 변수로 받아서 처리하면 // 여러개를 같이 처리할 수 있다. // 아니면 userLogin,
	 * userJoin을 각각 처리해줘야 함 //@RequestMapping("{url}.do") //userJoin을 변수처리 ,, 
	 * public String sample(@PathVariable String url) { //경로변수 스티커 부착 return "/user/"+url;
	 * }
	 * 
	 * 
	 * 
	 * 
	 * //@RequestMapping("userInsert.do") //상위 /user/경로 안써도 됨 ,, 
	 * public ModelAndView insert(MemberVO memberVO) {
	 * System.out.println("userInsert.do 요청환인");
	 * System.out.println(memberVO.getUserId());
	 * System.out.println(memberVO.getUserName());
	 * 
	 * int result = memberService.userInsert(memberVO); String message =
	 * "가입되지 않았습니다."; if(result>0) message = memberVO.getUserName() +"님, 가입을 축하";
	 * 
	 * ModelAndView mv = new ModelAndView(); mv.setViewName("user/userJoin_ok");
	 * mv.addObject("result",result); mv.addObject("message", message); return mv; 
	 * }
	 * 
	 * //@RequestMapping("login.do") 
	 * public String login(MemberVO vo, HttpSession session) {
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
