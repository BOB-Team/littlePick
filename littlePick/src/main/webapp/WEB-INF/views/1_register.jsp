<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>회원가입</title>

<link rel="stylesheet" href="resources/css/style_daun.css" type="text/css">
<script type="text/javascript" src="resources/js/jquery-1.7.1.js"></script>
<script src="resources/js/js_userinput.js"></script>
</head>



<body bgcolor="#FFFFFF">
<div class="register">

<form method="post" action="userInsert_save.do" class="table2" name="userinput" id="userinput">
<div class="register-logo">
<a href="#"><img src="resources/img/logo.png" width="200px"/></a>
</div>
     <div class="normalbold tb_ttl"  align="center">
        <input name="user_name" id="user_name" type="text" class="normal" placeholder="이름">
      </div>
    

     <div class="normalbold tb_ttl"  align="center">
        <input name="user_email" id="user_email" type="text" class="normal" placeholder="이메일">
        <input type="button" id="user_email_btn" class="user_email_btn" class="register-btn1" value="이메일 중복확인">
        <span id="emailCheckResult" style="width:150px;color:red"></span>
      </div>
      

      <div class="normalbold tb_ttl"  align="center">
        <input name="user_password" id="user_password" type="password" class="normal" placeholder="비밀번호">
      </div>
      

        <div class="normalbold tb_ttl"  align="center">
        <input name="user_password2" id="user_password2" type="password" class="normal" placeholder="비밀번호 확인">
        </div>

    
      <div class="normalbold tb_ttl"  align="center">
        <input name="user_nickname" id="user_nickname" type="text" class="normal" placeholder="닉네임">
        <div class="nick_btn">
        <input type="button" id="user_nickname_btn" class="user_nickname_btn" name="user_nickname_btn" value="닉네임 중복확인">
        </div>
        <span id="nicknameCheckResult" style="width:150px;color:red"></span>
      </div>
    

      <div class="normalbold tb_ttl"  align="center">
        <input name="user_phone" id="user_phone" type="text" class="normal" placeholder="전화번호">
      </div>
    

      <div class="normalbold tb_ttl"  align="center">
        <input name="user_address" id="user_address" type="text" class="normal" placeholder="주소">
      </div>

    
      <div class="normalbold tb_ttl"  align="center">
        <input name="user_birth" id="user_birth" type="text" class="normal" placeholder="생년월일  yyyy-mm-dd">
      </div>
    
      <div class="normalbold tb_ttl" id="gender" align="center">
     <input type="radio" name="user_gender" id="M"
        value='M' />남성<input type="radio" id="F"
        name="user_gender" value='F' />여성
      </div> 
 
          <div align="center"> 
        	
          <input type="button" name="confirm" id="confirm" class="confirm" value="가입하기">
         
        </div>
        <div class="daun-sub">
        <a href="1_login.do">로그인</a>
        <p>-----------</p>
        </div>
        
</form>
 		
</div>
</body>
</html>
