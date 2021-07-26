<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>커뮤니티 - 요리</title>
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
	<div class="board-title">
		<h3>요리</h3>
	</div>
	
<!-- 글쓰기버튼 -->
	<div class="board-write">
	<a class="button button-blog" href="community_board_input.do">글쓰기</a>
	</div>
	
<!-- 검색창 -->

<div class="board-search">
	<div class="blog_right_sidebar">
		<div class="single_sidebar_widget search_widget">
			<div class="input-group">
			<select class="form-select">
				<option class="form-select" value="title">제목</option>
				<option value="content">내용</option>
				<option value="user_name">작성자</option>
			</select>
				<input type="text" class="form-control" placeholder="Search Posts">
				<span class="input-group-btn">
					<button class="btn btn-default" type="button">
						<i class="lnr lnr-magnifier"></i>
					</button>
				</span>
			</div>
		</div>

<!-- 		<div class="single-sidebar-widget tag_cloud_widget">
			<div class="br"></div>
			<ul class="list">
				<li><a href="#"># 조깅</a></li>
				<li><a href="#"># 전기요금</a></li>
				<li><a href="#"># 에어컨</a></li>
				<li><a href="#"># 양파</a></li>
			</ul>
		</div>-->
	</div>

</div>
	<!-- ================ 게시판 상단 끝 ================= -->
	
 <hr>
  	<!--================요리 Area =================-->
	<section class="blog_categorie_area">
	
		<div class="container">
		<div class="board-select">
        <select>
				<option value="최신순">최신순</option>
				<option value="조회순">조회순</option>
		</select>
    	<a></a>
    	</div>
			<div class="row">
				<div class="col-sm-6 col-lg-4 mb-4 mb-lg-0">
					<div class="categories_post">
						<a href="single-blog.html"> <img
							src="resources/img/default/img_default.png" width="350px"
							height="350px">
						</a>
						<div class="blog_info">
							<a href="single-blog.html">
								<h5>제목</h5>
							</a><br> <a><img
								src="resources/img/default/user_default.png" width="20px"></a><a>작성자</a><br>
							<a><i class="lnr lnr-calendar-full"></i> 날짜</a> <a><i
								class="lnr lnr-eye"></i> 조회수</a> <a><i class="lnr lnr-bubble"></i>
								댓글</a>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-lg-4 mb-4 mb-lg-0">
					<div class="categories_post">
						<a href="single-blog.html"> <img
							src="resources/img/default/img_default.png" width="350px"
							height="350px">
						</a>
						<div class="blog_info">
							<a href="single-blog.html">
								<h5>제목</h5>
							</a><br> <a><img
								src="resources/img/default/user_default.png" width="20px"></a><a>작성자</a><br>
							<a><i class="lnr lnr-calendar-full"></i> 날짜</a> <a><i
								class="lnr lnr-eye"></i> 조회수</a> <a><i class="lnr lnr-bubble"></i>
								댓글</a>
						</div>

					</div>
				</div>

				<div class="col-sm-6 col-lg-4 mb-4 mb-lg-0">
					<div class="categories_post">
						<a href="single-blog.html"> <img
							src="resources/img/default/img_default.png" width="350px"
							height="350px">
						</a>
						<div class="blog_info">
							<a href="single-blog.html">
								<h5>제목</h5>
							</a><br> <a><img
								src="resources/img/default/user_default.png" width="20px"></a><a>작성자</a><br>
							<a><i class="lnr lnr-calendar-full"></i> 날짜</a> <a><i
								class="lnr lnr-eye"></i> 조회수</a> <a><i class="lnr lnr-bubble"></i>
								댓글</a>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-lg-4 mb-4 mb-lg-0">
					<div class="categories_post">
						<a href="single-blog.html"> <img
							src="resources/img/default/img_default.png" width="350px"
							height="350px">
						</a>
						<div class="blog_info">
							<a href="single-blog.html">
								<h5>제목</h5>
							</a><br> <a><img
								src="resources/img/default/user_default.png" width="20px"></a><a>작성자</a><br>
							<a><i class="lnr lnr-calendar-full"></i> 날짜</a> <a><i
								class="lnr lnr-eye"></i> 조회수</a> <a><i class="lnr lnr-bubble"></i>
								댓글</a>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-lg-4 mb-4 mb-lg-0">
					<div class="categories_post">
						<a href="single-blog.html"> <img
							src="resources/img/default/img_default.png" width="350px"
							height="350px">
						</a>
						<div class="blog_info">
							<a href="single-blog.html">
								<h5>제목</h5>
							</a><br> <a><img
								src="resources/img/default/user_default.png" width="20px"></a><a>작성자</a><br>
							<a><i class="lnr lnr-calendar-full"></i> 날짜</a> <a><i
								class="lnr lnr-eye"></i> 조회수</a> <a><i class="lnr lnr-bubble"></i>
								댓글</a>
						</div>

					</div>
				</div>

				<div class="col-sm-6 col-lg-4 mb-4 mb-lg-0">
					<div class="categories_post">
						<a href="single-blog.html"> <img
							src="resources/img/default/img_default.png" width="350px"
							height="350px">
						</a>
						<div class="blog_info">
							<a href="single-blog.html">
								<h5>제목</h5>
							</a><br> <a><img
								src="resources/img/default/user_default.png" width="20px"></a><a>작성자</a><br>
							<a><i class="lnr lnr-calendar-full"></i> 날짜</a> <a><i
								class="lnr lnr-eye"></i> 조회수</a> <a><i class="lnr lnr-bubble"></i>
								댓글</a>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>

	<!--================요리 Area 끝 =================-->
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