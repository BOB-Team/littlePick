<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>글 작성하기</title>
<link rel="icon" href="resources/img/Fevicon.png" type="image/png">
<link rel="stylesheet" href="resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="resources/vendors/linericon/style.css">
<link rel="stylesheet" href="resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<link rel="stylesheet" href="resources/css/style_0joo.css">
</head>
<body>

<!-- ================ 게시판 상단 ================= -->
<!-- ================ 게시판 상단 ================= -->
<!-- 헤더 인클루드 -->
  <section>
      <div class="container">
<%@ include file="header.jsp"%> 

 <!--================글 작성 Area =================-->
	<form action="community_modify_save.do?content_num=${board.content_num}" method="post" enctype="multipart/form-data">
		<div class="board-input-area">
			<h3>글 수정하기</h3>

			<div class="board-select">
				<select name="board_name">
					<option value='요리'>요리</option>
					<option value='생활'>생활</option>
					<option value='건강'>건강</option>
					<option value='번개팅'>번개팅</option>
				</select>
			</div>
			
			<div class="board-input-button">
				<input type="submit" class="button button-postComment button--active" value="수정완료"></input>
			</div>
			
			<div class="board-input-title">
			<input type="text" class="form-control" id="content_title" name="content_title"
					value="${board.content_title}"></div>
			
			<div class="board-input-content">
			<textarea class="form-control mb-10" rows="20" name="content"
					value="${board.content}"></textarea></div>
			
			<div class="board-input-image">
			<input type="file" class="form-control" id="content_image" name="file"></div>
			

		</div>
	</form>

	<!--================글 작성 Area 끝 =================-->
	<!--================ Start footer Area  =================-->	
	<%@ include file="footer.jsp"%> 

	<!--================ End footer Area  =================-->
  <script src="resources/vendors/jquery/jquery-3.2.1.min.js"></script>
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