<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>마이페이지</title>
<link rel="icon" href="resources/img/Fevicon.png" type="image/png">
<link rel="stylesheet" href="resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="resources/vendors/linericon/style.css">
<link rel="stylesheet" href="resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<link rel="stylesheet" href="resources/css/style_0joo.css">
<script src="resources/vendors/jquery/jquery-3.2.1.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="resources/js/postcode.js"></script>
</head>
<!-- <script>

window.onload = function() {
	document.getElementById('Submit').onclick = check;
}

function check() {
	
	
	
	if (document.form.user_password.value == "") {
		alert("비밀번호를 입력하세요.")
		document.form.user_password.focus();
		return false;
	}
	
	if (document.form.user_password.value != document.form.user_password2.value) {
		alert("비밀번호가 일치하지 않습니다.")
		document.form.user_password2.focus();
		return false;
	}

	document.form.submit();//전송

}
</script> -->
<body>

<!-- ================ 상단 ================= -->
<!-- 헤더 인클루드 -->
  <section>
      <div class="container">
<%@ include file="header.jsp"%> 

<div class="mypage-menu">
<nav class="navbar navbar-expand-lg">
		<ul class="nav navbar-nav menu_nav ml-auto mr-auto">
			<li class="nav-item submenu dropdown"><a class="nav-link" href="mypage_order.do">주문내역</a></li>
			<li class="nav-item submenu dropdown"><a class="nav-link" href="mypage_qna.do">문의내역</a></li>
			<li class="nav-item submenu dropdown"><a class="nav-link" href="mypage_board.do">게시글</a></li>
			<li class="nav-item submenu dropdown"><a class="nav-link" href="mypage_review.do">리뷰</a></li>
			<li class="nav-item submenu dropdown"><a class="nav-link" href="mypage_setting.do">정보수정</a></li>
		</ul>	
</nav>
	
</div>

<!-- 게시판 명 -->
	<div class="mypage-title">
		<h3>정보수정</h3>
	</div>
<!-- ================ 상단 끝 ================= -->
	<!-- ================ 마이페이지 ================= -->
<div class="mypage-area">
	<div class="mypage-left">
	
		<div class="img">
		<a><img src="resources/upload/user/${user.user_image}" width="150px"></a>
		</div>
		
		<div class="nickname">
		<h3>${user.user_nickname}</h3>
		</div>
		<hr>
		<div class="point">
		<h4>적립금</h4><h4>${user.user_point}</h4>
		</div>
		
		<div class="coupon">
		<h4>쿠폰</h4><h4>1</h4><!-- 나중에 컬럼 추가하고 가져오기 -->
		</div>
	</div>
	
	<div class="mypage-right">
	
	<form method="post" action="mypage_setting_save.do" name="form" enctype="multipart/form-data">
	<table class="mypage-table" >
	<tr>
	<td>이름</td><td><input type="text" name="user_name" id="user_name" value="${user.user_name}" readonly /></td>
	</tr>
	<tr>
	<td>이메일</td><td><input type="text" name="user_email" id="user_email" value="${user.user_email}" readonly /></td>
	</tr>
	<tr>
	<td>닉네임</td><td><input type="text" name="user_nickname"  id="user_nickname" value="${user.user_nickname}" /></td>
	</tr>
	<tr>
	<td>비밀번호</td><td><input type="password" name="user_password" id="user_password" placeholder="비밀번호를 입력하세요"/></td>
	</tr>
	<tr>
	<td>비밀번호 확인</td><td><input type="password" name="user_password2" id="user_password2" placeholder="비밀번호 확인"/></td>
	</tr>
	<tr>
	<td>휴대폰번호</td><td><input type="text" name="user_phone" id="user_phone"value="${user.user_phone}"/><td>
	</tr>
	<tr>
	<td>우편번호</td><td><input type="text" name="user_postcode" id="user_postcode"value="${user.user_postcode}"/>
	<input type="button" value="우편번호 검색" id="address_btn"/></td>
	</tr>
	<tr>
	<td>주소</td><td><input type="text" name="user_address" id="user_address"value="${user.user_address}"/></td>
	</tr>
	<tr>
	<td></td><td><input type="text" name="user_address2" id="user_address2"value="${user.user_address2}"/></td>
	</tr>
	<tr>
	<td></td><td><input type="text" name="user_address3" id="user_address3"value="${user.user_address3}"/></td>
	</tr>
	<tr>
	<td>생년월일</td><td><input type="text" name="user_birth" id="user_birth"value="${user.user_birth}"/></td>
	</tr>
	<tr>
	<td>프로필사진</td><td><input type="file" name="userfile" id="user_image"/></td>
	</tr>
	</table>
	<div class="board-input-button">
		<input type="button" name="Submit" id="Submit" class="button" value="수정하기"/>
	</div>
	</form>
	
	</div>
</div>

	<!-- ================ 마이페이지 ================= -->

	<!--================ Start footer Area  =================-->	
<%-- 	 <%@ include file="footer.jsp"%>   --%>

	<!--================ End footer Area  =================-->




  <script src="resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
  <script src="resources/vendors/skrollr.min.js"></script>
  <script src="resources/vendors/owl-carousel/owl.carousel.min.js"></script>
  <script src="resources/vendors/nice-select/jquery.nice-select.min.js"></script>
  <script src="resources/vendors/jquery.ajaxchimp.min.js"></script>
  <script src="resources/vendors/mail-script.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
  <script src="resources/js/main.js"></script>
  </div>
  </section>
</body>
</html>