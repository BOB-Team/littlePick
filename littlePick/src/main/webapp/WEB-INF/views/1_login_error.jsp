<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<!--<style>
	table{border:#FF9900 double }
	td{text-align:center;padding:5}
</style>-->
<link rel="stylesheet" href="resources/css/style_daun.css" type="text/css">
</head>
<script>

	window.onload = function() {
		document.getElementById('Submit').onclick = check;
	}

	function check() {
		if (document.form.user_email.value == "") {
			alert("이메일을 입력하세요.")
			document.form.user_email.focus();
			return false;
		}

		if (document.form.user_password.value == "") {
			alert("비밀번호를 입력하세요.")
			document.form.user_password.focus();
			return false;
		}

		document.form.submit();//전송

	}
</script>
<body bgcolor="#FFFFFF">
<div class="login">
    <form action="login_go.do" method="post" name="form" class="table2">
	<!--<form name="form" action="login.do" method="post">-->
<div class="register-logo">
<a href="main.do"><img src="resources/img/logo.png" width="200px"/></a>
</div>
<div class="login-error">
<a>이메일 또는 비밀번호가 일치하지 않습니다.</a>
</div>
	<div class="normalbold tb_ttl"  align="center">
        <input name="user_email" type="text" class="normal" placeholder="이메일">
      </div>
    
    <div class="normalbold tb_ttl"  align="center">
        <input name="user_password" type="password" class="normal" placeholder="비밀번호">
      </div>
      
    <div align="center"> 
        <input type="button" name="Submit" id="Submit" class="confirm"  value="로그인">
  
    </div>
    
      <div class="daun-sub">
       <a href="1_register.do">회원가입</a>
    	<a href="#">이메일/비밀번호 찾기</a>
        </div>
  </form>
  
</div>
</body>
</html>