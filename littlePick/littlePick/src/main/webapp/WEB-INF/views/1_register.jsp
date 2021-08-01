<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>회원가입</title>

<script type="text/javascript" src="resources/js/jquery-1.7.1.js"></script>
<link rel="stylesheet" href="resources/css/style_daun.css" type="text/css">
</head>

<body bgcolor="#FFFFFF">
<div class="register">

<form method="post" action="userInsert_save.do" class="table2">
<div class="register-logo">
<a href="#"><img src="resources/img/logo.png" width="200px"/></a>
</div>
     <div class="normalbold tb_ttl"  align="center">
        <input name="user_name" type="text" class="normal" placeholder="이름">
      </div>
    

     <div class="normalbold tb_ttl"  align="center">
        <input name="user_email" type="text" class="normal" placeholder="이메일">
        <span id="idCheckResult" style="width:150px;color:red"></span>
      </div>
      

      <div class="normalbold tb_ttl"  align="center">
        <input name="user_password" type="password" class="normal" placeholder="비밀번호">
      </div>
      

        <div class="normalbold tb_ttl"  align="center">
        <input name="user_password2" type="password" class="normal" placeholder="비밀번호 확인">
        </div>

    
      <div class="normalbold tb_ttl"  align="center">
        <input name="user_nickname" type="text" class="normal" placeholder="닉네임">
      </div>
    

      <div class="normalbold tb_ttl"  align="center">
        <input name="user_phone" type="text" class="normal" placeholder="전화번호">
      </div>
    

      <div class="normalbold tb_ttl"  align="center">
        <input name="user_address" type="text" class="normal" placeholder="주소">
      </div>

    
      <div class="normalbold tb_ttl"  align="center">
        <input name="user_birth" type="text" class="normal" placeholder="생년월일  yyyy-mm-dd">
      </div>
    
      <div class="normalbold tb_ttl"  align="center">
     <input type="radio" name="user_gender" id="user_gender"
        value='M' />남성<input type="radio" 
        name="user_gender" id="user_gender" value='F' />여성
      </div> 
 
          <div align="center"> 
        	
          <input type="submit" class="confirm"  value="가입하기">
         
        </div>
        <div class="daun-sub">
        <a href="1_login.do">로그인</a>
        <p>-----------</p>
        </div>
        
</form>
 		
</div>
</body>
</html>
