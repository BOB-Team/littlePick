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
		if (document.form.admin_id.value == "") {
			alert("관리자 아이디를 입력하세요.")
			document.form.admin_id.focus();
			return false;
		}

		if (document.form.admin_password.value == "") {
			alert("비밀번호를 입력하세요.")
			document.form.admin_password.focus();
			return false;
		}

		document.form.submit();//전송

	}
</script>
<body bgcolor="#FFFFFF">
<div class="login">
    <form action="login_admin_go.do" method="post" name="form" class="table2">
	<!--<form name="form" action="login.do" method="post">-->
<div class="register-logo">
<a href="main.do"><img src="resources/img/logo.png" width="200px"/></a>
</div>
	<div class="normalbold tb_ttl"  align="center">
        <input name="admin_id" type="text" class="normal" placeholder="관리자 아이디">
      </div>
    
    <div class="normalbold tb_ttl"  align="center">
        <input name="admin_password" type="password" class="normal" placeholder="비밀번호">
      </div>
      
    <div align="center"> 
        <input type="button" name="Submit" id="Submit" class="confirm"  value="로그인">
  
    </div>
    
      <div class="daun-sub">
      <a href="1_login.do">일반회원 로그인</a>
      <a href="1_register.do">회원가입</a>
      <a href="#">이메일/비밀번호 찾기</a>
    	
        </div>
  </form>
  
</div>
</body>
</html>