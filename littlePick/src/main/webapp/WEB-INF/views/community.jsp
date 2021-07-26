<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>커뮤니티</title>
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

<!-- 게시판 명 & 글쓰기버튼 & 상단배너 -->
	<div class="board-title">
		<h3>커뮤니티</h3>
	</div>
	
	<div class="board-write">
	<a class="button button-blog" href="community_board_input.do">글쓰기</a>
	</div>
	
	<div class="board-banner">
		<section class="rolling-banner">
			<div class="rolling-image">
				<img src="https://bucketplace-v2-development.s3-ap-northeast-1.amazonaws.com/uploads/advices/guides/self_interior/pc_banner_image.v3.png">
			</div>
		</section>
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

		<div class="single-sidebar-widget tag_cloud_widget">
			<div class="br"></div>
			<ul class="list">
				<li><a href="#"># 조깅</a></li>
				<li><a href="#"># 전기요금</a></li>
				<li><a href="#"># 에어컨</a></li>
				<li><a href="#"># 양파</a></li>
				<li><a href="#"># 장마</a></li>
			</ul>
		</div>
	</div>

</div>
	<!-- ================ 게시판 상단 끝 ================= -->
	
 <hr>
	<!--================1. 요리 Area =================-->
  <section class="blog_categorie_area">
    <div class="container">
    <div class="board-name">
    <p>요리</p>
    <a href="#">더보기 →</a>
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
							<h5>제목</h5></a><br>
							<a><img
							src="resources/img/default/user_default.png" width="20px"></a><a>작성자</a><br>
							<a><i class="lnr lnr-calendar-full"></i> 날짜</a>
							<a><i class="lnr lnr-eye"></i> 조회수</a>
							<a><i class="lnr lnr-bubble"></i> 댓글</a>	
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
							<h5>제목</h5></a><br>
							<a><img
							src="resources/img/default/user_default.png" width="20px"></a><a>작성자</a><br>
							<a><i class="lnr lnr-calendar-full"></i> 날짜</a>
							<a><i class="lnr lnr-eye"></i> 조회수</a>
							<a><i class="lnr lnr-bubble"></i> 댓글</a>	
						</div>

					</div>
				</div>

		<div class="col-sm-6 col-lg-4 mb-4 mb-lg-0">
          <div class="categories_post">
            <a href="single-blog.html">
            <img src="resources/img/default/img_default.png" width="350px" height="350px">
            </a>
            <div class="blog_info">
							<a href="single-blog.html">
							<h5>제목</h5></a><br>
							<a><img
							src="resources/img/default/user_default.png" width="20px"></a><a>작성자</a><br>
							<a><i class="lnr lnr-calendar-full"></i> 날짜</a>
							<a><i class="lnr lnr-eye"></i> 조회수</a>
							<a><i class="lnr lnr-bubble"></i> 댓글</a>	
						</div>
          </div>
        </div>
        
      </div>
    </div>
  </section>
  <!--================요리 Area 끝 =================-->
   <hr>
    <!--================2.생활 Area =================-->
   <section class="blog_categorie_area">
    <div class="container">
    <div class="category-name">
    <p>생활</p>
    <a href="#">더보기 →</a>
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
							<h5>제목</h5></a><br>
							<a><img
							src="resources/img/default/user_default.png" width="20px"></a><a>작성자</a><br>
							<a><i class="lnr lnr-calendar-full"></i> 날짜</a>
							<a><i class="lnr lnr-eye"></i> 조회수</a>
							<a><i class="lnr lnr-bubble"></i> 댓글</a>	
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
							<h5>제목</h5></a><br>
							<a><img
							src="resources/img/default/user_default.png" width="20px"></a><a>작성자</a><br>
							<a><i class="lnr lnr-calendar-full"></i> 날짜</a>
							<a><i class="lnr lnr-eye"></i> 조회수</a>
							<a><i class="lnr lnr-bubble"></i> 댓글</a>	
						</div>

					</div>
				</div>

		<div class="col-sm-6 col-lg-4 mb-4 mb-lg-0">
          <div class="categories_post">
            <a href="single-blog.html">
            <img src="resources/img/default/img_default.png" width="350px" height="350px">
            </a>
            <div class="blog_info">
							<a href="single-blog.html">
							<h5>제목</h5></a><br>
							<a><img
							src="resources/img/default/user_default.png" width="20px"></a><a>작성자</a><br>
							<a><i class="lnr lnr-calendar-full"></i> 날짜</a>
							<a><i class="lnr lnr-eye"></i> 조회수</a>
							<a><i class="lnr lnr-bubble"></i> 댓글</a>	
						</div>
          </div>
        </div>
        
      </div>
    </div>
  </section>
  <!--================생활 Area 끝 =================-->
   <hr>
    <!--================3. 건강 Area =================-->
    <section class="blog_categorie_area">
    <div class="container">
    <div class="category-name">
    <p>건강</p>
    <a href="#">더보기 →</a>
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
							<h5>제목</h5></a><br>
							<a><img
							src="resources/img/default/user_default.png" width="20px"></a><a>작성자</a><br>
							<a><i class="lnr lnr-calendar-full"></i> 날짜</a>
							<a><i class="lnr lnr-eye"></i> 조회수</a>
							<a><i class="lnr lnr-bubble"></i> 댓글</a>	
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
							<h5>제목</h5></a><br>
							<a><img
							src="resources/img/default/user_default.png" width="20px"></a><a>작성자</a><br>
							<a><i class="lnr lnr-calendar-full"></i> 날짜</a>
							<a><i class="lnr lnr-eye"></i> 조회수</a>
							<a><i class="lnr lnr-bubble"></i> 댓글</a>	
						</div>

					</div>
				</div>

		<div class="col-sm-6 col-lg-4 mb-4 mb-lg-0">
          <div class="categories_post">
            <a href="single-blog.html">
            <img src="resources/img/default/img_default.png" width="350px" height="350px">
            </a>
            <div class="blog_info">
							<a href="single-blog.html">
							<h5>제목</h5></a><br>
							<a><img
							src="resources/img/default/user_default.png" width="20px"></a><a>작성자</a><br>
							<a><i class="lnr lnr-calendar-full"></i> 날짜</a>
							<a><i class="lnr lnr-eye"></i> 조회수</a>
							<a><i class="lnr lnr-bubble"></i> 댓글</a>	
						</div>
          </div>
        </div>
        
      </div>
    </div>
  </section>
  <!--================건강 Area 끝 =================-->
  <!--================번개팅 Area =================-->
  <hr>
	<section class="blog_area">
		<div class="container">
			<div class="category-name">
				<p>번개팅</p>
				<a href="#">더보기 →</a>
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

				</div>
			</div>
		</div>
	</section>
	  <!--================번개팅 Area 끝 =================-->



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