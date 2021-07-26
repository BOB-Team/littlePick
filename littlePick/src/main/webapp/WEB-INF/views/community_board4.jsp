<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>커뮤니티 - 번개팅</title>
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
		<h3>번개팅</h3>
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

		<!-- <div class="single-sidebar-widget tag_cloud_widget">
			<div class="br"></div>
			<ul class="list">
				<li><a href="#"># 조깅</a></li>
				<li><a href="#"># 전기요금</a></li>
				<li><a href="#"># 에어컨</a></li>
				<li><a href="#"># 양파</a></li>
			</ul>
		</div> -->
	</div>

</div>
	<!-- ================ 게시판 상단 끝 ================= -->
	
 <hr>

  <!--================번개팅 Area =================-->
  
	<section class="blog_area">
		<div class="container">
		<div class="board-select">
        <select>
				<option value="최신순">최신순</option>
				<option value="조회순">조회순</option>
		</select>
    	<a></a>
    	</div>
				
			<div class="row">
				<div class="col-lg-12">


					<!-- 번개팅 1번 -->
					<article class="row blog_item">

						<div class="col-md-10">
							<div class="blog_post">
								<div class="blog_details">
									<a href="single-blog.html">
										<h2>송도 센트럴파크에서 오늘 저녁 같이 조깅하실분?</h2>
									</a>
									<p>안녕하세요~ 혹시 송도 센트럴파크에서 같이 조깅하실 분 계실까요? 오늘 저녁 8시쯤 생각하고있어요~
										한 3~4명 정도 모이면 좋을 것 같네요!</p>
								</div>
							</div>
						</div>
						<div class="col-md-2">
							<div class="blog_info">

								<ul class="blog_meta list">
									<li><a href="#"><img
											src="resources/img/default/user_default.png" width="20px">작성자</a></li>
									<li><a><i class="lnr lnr-calendar-full"></i> 날짜</a></li>
									<li><a><i class="lnr lnr-eye"></i> 조회수</a></li>
									<li><a><i class="lnr lnr-bubble"></i> 댓글</a></li>
								</ul>
							</div>
						</div>
					</article>

					<!-- 번개팅 1번 끝 -->
					<!-- 번개팅 2번 -->
					<article class="row blog_item">

						<div class="col-md-10">
							<div class="blog_post">
								<div class="blog_details">
									<a href="single-blog.html">
										<h2>글 제목</h2>
									</a>
									<p>글 내용 일부</p>
								</div>
							</div>
						</div>
						<div class="col-md-2">
							<div class="blog_info">

								<ul class="blog_meta list">
									<li><a href="#"><img
											src="resources/img/default/user_default.png" width="20px">작성자</a></li>
									<li><a><i class="lnr lnr-calendar-full"></i> 날짜</a></li>
									<li><a><i class="lnr lnr-eye"></i> 조회수</a></li>
									<li><a><i class="lnr lnr-bubble"></i> 댓글</a></li>
								</ul>
							</div>
						</div>
					</article>

					<!-- 번개팅 2번 끝 -->
					<!-- 번개팅 3번 -->
					<article class="row blog_item">

						<div class="col-md-10">
							<div class="blog_post">
								<div class="blog_details">
									<a href="single-blog.html">
										<h2>글 제목</h2>
									</a>
									<p>글 내용 일부</p>
								</div>
							</div>
						</div>
						<div class="col-md-2">
							<div class="blog_info">

								<ul class="blog_meta list">
									<li><a href="#"><img
											src="resources/img/default/user_default.png" width="20px">작성자</a></li>
									<li><a><i class="lnr lnr-calendar-full"></i> 날짜</a></li>
									<li><a><i class="lnr lnr-eye"></i> 조회수</a></li>
									<li><a><i class="lnr lnr-bubble"></i> 댓글</a></li>
								</ul>
							</div>
						</div>
					</article>

					<!-- 번개팅 3번 끝 -->
					<!-- 번개팅 4번 -->
					<article class="row blog_item">

						<div class="col-md-10">
							<div class="blog_post">
								<div class="blog_details">
									<a href="single-blog.html">
										<h2>글 제목</h2>
									</a>
									<p>글 내용 일부</p>
								</div>
							</div>
						</div>
						<div class="col-md-2">
							<div class="blog_info">

								<ul class="blog_meta list">
									<li><a href="#"><img
											src="resources/img/default/user_default.png" width="20px">작성자</a></li>
									<li><a><i class="lnr lnr-calendar-full"></i> 날짜</a></li>
									<li><a><i class="lnr lnr-eye"></i> 조회수</a></li>
									<li><a><i class="lnr lnr-bubble"></i> 댓글</a></li>
								</ul>
							</div>
						</div>
					</article>

					<!-- 번개팅 4번 끝 -->
					<!-- 번개팅 5번 -->
					<article class="row blog_item">

						<div class="col-md-10">
							<div class="blog_post">
								<div class="blog_details">
									<a href="single-blog.html">
										<h2>글 제목</h2>
									</a>
									<p>글 내용 일부</p>
								</div>
							</div>
						</div>
						<div class="col-md-2">
							<div class="blog_info">

								<ul class="blog_meta list">
									<li><a href="#"><img
											src="resources/img/default/user_default.png" width="20px">작성자</a></li>
									<li><a><i class="lnr lnr-calendar-full"></i> 날짜</a></li>
									<li><a><i class="lnr lnr-eye"></i> 조회수</a></li>
									<li><a><i class="lnr lnr-bubble"></i> 댓글</a></li>
								</ul>
							</div>
						</div>
					</article>

					<!-- 번개팅 5번 끝 -->
					<!-- 번개팅 6번 -->
					<article class="row blog_item">

						<div class="col-md-10">
							<div class="blog_post">
								<div class="blog_details">
									<a href="single-blog.html">
										<h2>글 제목</h2>
									</a>
									<p>글 내용 일부</p>
								</div>
							</div>
						</div>
						<div class="col-md-2">
							<div class="blog_info">

								<ul class="blog_meta list">
									<li><a href="#"><img
											src="resources/img/default/user_default.png" width="20px">작성자</a></li>
									<li><a><i class="lnr lnr-calendar-full"></i> 날짜</a></li>
									<li><a><i class="lnr lnr-eye"></i> 조회수</a></li>
									<li><a><i class="lnr lnr-bubble"></i> 댓글</a></li>
								</ul>
							</div>
						</div>
					</article>

					<!-- 번개팅 6번 끝 -->

				</div>
			</div>
		</div>
	</section>
	  <!--================번개팅 Area 끝 =================-->
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