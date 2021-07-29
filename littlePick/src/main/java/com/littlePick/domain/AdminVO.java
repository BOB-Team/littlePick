package com.littlePick.domain;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

//Member_tb, Board_tb, Comment_tb 구현
public class AdminVO {
	
	//Member_tb
	private int user_num; //회원번호
	private String user_name; //회원이름
	private String user_email; //이메일
	private String user_password; //비밀번호
	private String user_nickname; //닉네임 >> 쇼핑몰에서 닉네임으로 활동
	private String user_phone; // 휴대폰
	private String user_address; //주소
	private char user_gender; //성별
	private String user_birth; //'1990-11-22' 형식으로
	private String user_regdate; // 가입일 sysdate()
	private int user_point; // 적립금
	private String user_image; // 프로필사진

	//Board_tb (content_num, user_num, board_name, content_title, content, content_image,content_date, content_count)
	private int content_num; // 게시글번호
	private String board_name; // 게시판번호 -> 이름넣기 
	private String content_title; // 게시글제목
	private String content; // 게시글 내용
	private String content_image; //대표이미지
	private String content_date; // 글 작성일자 sysdate()
	private int content_count; // 조회수 0

	
	//Comment_tb
	private int comment_num; // 댓글 번호
	private String comment_content; // 댓글 내용
	private String comment_date; // 댓글 작성일 sysdate()
	
	//Qboard_tb
	private int q_num;
	private String q_title;
	private String q_content;
	private String q_date;
	private String q_count;
	
	//Answer_tb
	private String a_title;
	private String a_content;
	private String a_date;
	private int a_count;

	
	//Admin_tb
	private String admin_id;
	private String admin_password;
	

	
	//파일 업로드 관련
	MultipartFile file;	// write.jsp에 파일첨부시 name="file"과 동일한 변수명
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
		
		// 업로드 파일 접근
		if(! file.isEmpty()){
			this.content_image = file.getOriginalFilename();
			
			//***********************************************
			// 해당 경로로 변경
			File f = new File("C:\\zzz\\workspace_team_git_0726\\littlePick\\src\\main\\webapp\\resources\\upload\\board\\"+content_image);
			//경로도 맞춰줘야 할 것 같은디...
			try {
				file.transferTo(f);
				
			} catch (IllegalStateException e) {				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
	}
	
	//유저 프사 수정
		MultipartFile userImgFile;	// write.jsp에 파일첨부시 name="file"과 동일한 변수명
		
		
		public MultipartFile getUserImgFile() {
			return userImgFile;
		}
		
		public void setUserImgFile(MultipartFile userImgFile) {
				this.userImgFile = userImgFile;
				
				
			// 업로드 파일 접근
			if(!userImgFile.isEmpty())
				
			{
				this.user_image = userImgFile.getOriginalFilename();
				
				
				//***********************************************
				// 해당 경로로 변경
				File f = new File("C:\\zzz\\workspace_team_git_0726\\littlePick\\src\\main\\webapp\\resources\\upload\\user\\"+user_image);
				//경로도 맞춰줘야 할 것 같은디...
				try {
					userImgFile.transferTo(f);
					
				} catch (IllegalStateException e) {				
					e.printStackTrace();
				} catch (IOException e) {
					
					e.printStackTrace();
				}
			}
		}
	
	//getter setter
	//Member_tb
	public int getUser_num() {
		return user_num;
	}
	public void setUser_num(int user_num) {
		this.user_num = user_num;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_nickname() {
		return user_nickname;
	}
	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	public char getUser_gender() {
		return user_gender;
	}
	public void setUser_gender(char user_gender) {
		this.user_gender = user_gender;
	}
	public String getUser_birth() {
		return user_birth;
	}
	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}
	public String getUser_regdate() {
		return user_regdate;
	}
	public void setUser_regdate(String user_regdate) {
		this.user_regdate = user_regdate;
	}
	public int getUser_point() {
		return user_point;
	}
	public void setUser_point(int user_point) {
		this.user_point = user_point;
	}
	public String getUser_image() {
		return user_image;
	}
	public void setUser_image(String user_image) {
		this.user_image = user_image;
	}
	
	
	//Board_tb
	public int getContent_num() {
		return content_num;
	}
	public void setContent_num(int content_num) {
		this.content_num = content_num;
	}
	public String getBoard_name() {
		return board_name;
	}
	public void setBoard_name(String board_name) {
		this.board_name = board_name;
	}
	public String getContent_title() {
		return content_title;
	}
	public void setContent_title(String content_title) {
		this.content_title = content_title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getContent_image() {
		return content_image;
	}
	public void setContent_image(String content_image) {
		this.content_image = content_image;
	}
	public String getContent_date() {
		return content_date;
	}
	public void setContent_date(String content_date) {
		this.content_date = content_date;
	}
	public int getContent_count() {
		return content_count;
	}
	public void setContent_count(int content_count) {
		this.content_count = content_count;
	}
	
	
	
	//Comment_tb
	public int getComment_num() {
		return comment_num;
	}
	public void setComment_num(int comment_num) {
		this.comment_num = comment_num;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public String getComment_date() {
		return comment_date;
	}
	public void setComment_date(String comment_date) {
		this.comment_date = comment_date;
	}
	
	//Qboard_tb
	public int getQ_num() {
		return q_num;
	}
	public void setQ_num(int q_num) {
		this.q_num = q_num;
	}
	public String getQ_title() {
		return q_title;
	}
	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}
	public String getQ_content() {
		return q_content;
	}
	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}
	public String getQ_date() {
		return q_date;
	}
	public void setQ_date(String q_date) {
		this.q_date = q_date;
	}
	public String getQ_count() {
		return q_count;
	}
	public void setQ_count(String q_count) {
		this.q_count = q_count;
	}
	
	//Answer_tb
	
	public String getA_title() {
		return a_title;
	}
	public void setA_title(String a_title) {
		this.a_title = a_title;
	}
	public String getA_content() {
		return a_content;
	}
	public void setA_content(String a_content) {
		this.a_content = a_content;
	}
	public String getA_date() {
		return a_date;
	}
	public void setA_date(String a_date) {
		this.a_date = a_date;
	}
	public int getA_count() {
		return a_count;
	}
	public void setA_count(int a_count) {
		this.a_count = a_count;
	}
	
	
	//Admin_tb
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_password() {
		return admin_password;
	}
	public void setAdmin_password(String admin_password) {
		this.admin_password = admin_password;
	}


}
