<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>게시글 보기</title>
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
<!-- 헤더 인클루드 -->
<%@ include file="header.jsp"%> 

<!-- 게시판 명 -->
	<div class="board-view-title">
		<h4>카테고리명</h4><br>
		<h3>게시글 제목</h3>
		<div class="blog_info">
			<div class="board-view-info">
			<a><img src="resources/img/default/user_default.png"width="50px"></a><a>작성자</a><br><br>
			<a><i class="lnr lnr-calendar-full"></i> 날짜</a>
			<a><i class="lnr lnr-eye"></i>조회수</a>
			<a><i class="lnr lnr-bubble"></i> 댓글</a>
			</div>
			<div class="board-view-button">
				<a href="#" class="button button-postComment button--active">수정</a>
				<a href="#" class="button button-postComment button--active">삭제</a>
			</div>
		</div>
		
	</div>
	<!-- ================ 게시판 상단 끝 ================= -->
  	<!--================ 글 내용 Area =================-->
  	<div class="board-view-content-img">
  	<a><img src="resources/img/blog/latest-post/l-post-1.jpg"width="600px"></a>
  	</div>
  	<div class="board-view-content">
  	<a>내용을 입력하는 중입니다. 여러분 행복하세요</a>
  	</div>
  	
	<!--================ 글 내용 Area 끝 =================-->
	  <!--================댓글 Area =================-->
	  <div class="board-view-comment">
	  		<h4>댓글 2</h4><br>
	
			<div class="board-view-comment-list">
	
	  			<div class="board-view-comment-profile">
	  	 		<a><img src="resources/img/default/user_default.png"width="50px"></a>
	  			<a>댓글러</a>
	  			</div>
	  	
	  			<div class="board-view-comment-text">
	  			<a>헐 너무 예뻐요!! 최고최고ㅜㅜ</a>
	  			</div>
	  	
	  			<div class="board-view-comment-sub">
	  				<a>날짜</a><a>답글달기<img src="resources/img/default/point.png" width="20px"/></a>
	  			</div>
	  	
	  		</div>

			<div class="board-view-recomment-list">
	
	  			<div class="board-view-comment-profile">
	  	 		<a><img src="resources/img/default/user_default.png"width="50px"></a>
	  			<a>대댓글러</a>
	  			</div>
	  	
	  			<div class="board-view-comment-text">
	  			<a>감사합니다.</a>
	  			</div>
	  	
	  			<div class="board-view-comment-sub">
	  				<a>날짜</a><a>답글달기<img src="resources/img/default/point.png" width="20px"/></a><a>삭제</a>
	  			</div>
	  	
	  	</div>
	  	
		</div>
	  
	  
	  <!--================댓글 Area 끝 =================-->
	  
	<!--================페이징 =================-->
	 
	<nav class="blog-pagination justify-content-center d-flex">
		<ul class="pagination">
			<li class="page-item"><a href="#" class="page-link" aria-label="Previous">
				<span aria-hidden="true">
					<span class="lnr lnr-chevron-left"></span>
				</span></a></li>
			<li class="page-item active"><a href="#" class="page-link">01</a></li>
			<li class="page-item"><a href="#" class="page-link">02</a></li>
			<li class="page-item"><a href="#" class="page-link">03</a></li>
			<li class="page-item"><a href="#" class="page-link">04</a></li>
			<li class="page-item"><a href="#" class="page-link">05</a></li>
			<li class="page-item"><a href="#" class="page-link"aria-label="Next">
				<span aria-hidden="true">
					<span class="lnr lnr-chevron-right"></span>
				</span></a></li>
		</ul>
	</nav>
 	<!--================페이징 끝 =================-->

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