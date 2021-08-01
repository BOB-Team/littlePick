<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>리뷰 작성</title>
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
<%@ include file="header.jsp"%> 

  <!--================글 작성 Area =================-->
	<form action="mypage_review_save.do?product_num=${product_num}" method="post" enctype="multipart/form-data">
		<div class="board-input-area">
			<h3>상품 리뷰</h3>
			
			<div class="board-input-button">
				<input type="submit" class="button button-postComment button--active" value="작성완료"></input>
			</div>
			
			<div class="board-input-title">
			<%-- 상품번호:<input type="text" value="${product_num}" readonly><br>
			상품명:<input type="text" value="${product_name}" readonly><br> --%>
			<a>별점</a>
			1<input type="radio" name="review_star" id="1" value="1" />
			2<input type="radio" id="2"name="review_star" value="2" /> 
			3<input type="radio" id="3"name="review_star" value="3" /> 
			4<input type="radio" id="4"name="review_star" value="4" /> 
			5<input type="radio" id="5"name="review_star" value="5" checked /> 
			<!-- 
			<input type="text" class="form-control" id="review_star" name="review_star"
					placeholder="별점을 1에서 5 사이로 입력하세요"> -->
			</div>
			<div class="board-input-content">
			<textarea class="form-control mb-10" rows="20" name="review_content"
					placeholder="내용을 입력하세요"></textarea></div>
					
			<div class="board-input-image">
			<input type="file" class="form-control" id="review_image" name="reviewfile"
					placeholder="이미지 첨부"></div>
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
</body>
</html>