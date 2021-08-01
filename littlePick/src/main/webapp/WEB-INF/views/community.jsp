<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
		
		<form action="community_search.do" method="post">
			<div class="input-group">
			<select class="form-select" name="searchCondition">
				<option class="form-select" value="content_title">제목</option>
				<option value="content">내용</option>
				<option value="user_nickname">작성자</option>
			</select>
				<input type="text" class="form-control" name="searchKeyword" placeholder="커뮤니티 글 검색하기">
				<span class="input-group-btn">
					<button class="btn btn-default" type="submit">
						<i class="lnr lnr-magnifier"></i>
					</button>
				</span>
			</div>
		</form>
			
		</div>

		<div class="single-sidebar-widget tag_cloud_widget">
			<div class="br"></div>
			<ul class="list">
				<li><a href="community_search.do?searchCondition=content_title&searchKeyword=등산"># 등산</a></li>
				<li><a href="community_search.do?searchCondition=content_title&searchKeyword=냉라면"># 냉라면</a></li>
				<li><a href="community_search.do?searchCondition=content_title&searchKeyword=에어컨"># 에어컨</a></li>
				<li><a href="community_search.do?searchCondition=content_title&searchKeyword=양파"># 양파</a></li>
				<li><a href="community_search.do?searchCondition=content_title&searchKeyword=음식물"># 음식물</a></li>
			</ul>
		</div>
	</div>

</div>
	<!-- ================ 게시판 상단 끝 ================= -->
	
 <hr>
	<!--================1. 요리 Area =================-->
  <section class="commu_area">
    <div class="container">
    <div class="category-name">
    <p>요리</p>
    <a href="community_board1.do">더보기 →</a>
    </div>
    

      <div class="row">
      
      <c:forEach items="${boardList1}" var="board1">

				<div class="col-sm-6 col-lg-4 mb-4 mb-lg-0">
					<div class="categories_post">
						<a href="community_board_view.do?content_num=${board1.content_num}"> <img
							src="resources/upload/board/${board1.content_image}" width="350px"
							height="350px">
						</a>
						<div class="blog_info">
							<a href="community_board_view.do?content_num=${board1.content_num}">
								<h5>${board1.content_title}</h5>
							</a><br> <a><img
								src="resources/upload/user/${board1.user_image}" width="20px" href="#"></a><a href="#">${board1.user_nickname}</a><br>
							<a><i class="lnr lnr-calendar-full"></i>${board1.content_date}</a> <a><i
								class="lnr lnr-eye"></i>${board1.content_count}</a>
						</div>
					</div>
				</div>
			
			</c:forEach>
				
      </div>
    </div>
      
  </section>
  <!--================요리 Area 끝 =================-->
   <hr>
    <!--================2.생활 Area =================-->
   <section class="commu_area">
    <div class="container">
    <div class="category-name">
    <p>생활</p>
    <a href="community_board2.do">더보기 →</a>
    </div>
      <div class="row">
      
      
<c:forEach items="${boardList2}" var="board2">

				<div class="col-sm-6 col-lg-4 mb-4 mb-lg-0">
					<div class="categories_post">
						<a href="community_board_view.do?content_num=${board2.content_num}"> <img
							src="resources/upload/board/${board2.content_image}" width="350px"
							height="350px">
						</a>
						<div class="blog_info">
							<a href="community_board_view.do?content_num=${board2.content_num}">
								<h5>${board2.content_title}</h5>
							</a><br> <a><img
								src="resources/upload/user/${board2.user_image}" width="20px" href="#"></a><a href="#">${board2.user_nickname}</a><br>
							<a><i class="lnr lnr-calendar-full"></i>${board2.content_date}</a> <a><i
								class="lnr lnr-eye"></i>${board2.content_count}</a>
						</div>
					</div>
				</div>
			
			</c:forEach>
				
          </div>
        </div>
        
     
  </section>
  <!--================생활 Area 끝 =================-->
   <hr>
    <!--================3. 건강 Area =================-->
    <section class=commu_area>
    <div class="container">
    <div class="category-name">
    <p>건강</p>
    <a href="community_board3.do">더보기 →</a>
    </div>
      <div class="row">

				<c:forEach items="${boardList3}" var="board3">

				<div class="col-sm-6 col-lg-4 mb-4 mb-lg-0">
					<div class="categories_post">
						<a href="community_board_view.do?content_num=${board3.content_num}"> <img
							src="resources/upload/board/${board3.content_image}" width="350px"
							height="350px">
						</a>
						<div class="blog_info">
							<a href="community_board_view.do?content_num=${board3.content_num}">
								<h5>${board3.content_title}</h5>
							</a><br> <a><img
								src="resources/upload/user/${board3.user_image}" width="20px" href="#"></a><a href="#">${board3.user_nickname}</a><br>
							<a><i class="lnr lnr-calendar-full"></i>${board3.content_date}</a> <a><i
								class="lnr lnr-eye"></i>${board3.content_count}</a>
						</div>
					</div>
				</div>
			
			</c:forEach>
        
      </div>
    </div>
  </section>
  <!--================건강 Area 끝 =================-->
  <!--================번개팅 Area =================-->
  <hr>
	<section class="commu_area">
		<div class="container">
			<div class="category-name">
				<p>번개팅</p>
				<a href="community_board4.do">더보기 →</a>
			</div>
			<div class="row">
				<div class="col-lg-12">

<c:forEach items="${boardList4}" var="board4">

					<!-- 번개팅 -->
					<article class="row blog_item">

						<div class="col-md-10">
							<div class="blog_post">
								<div class="blog_details">
									<a href="community_board_view.do?content_num=${board4.content_num}">
										<h2>${board4.content_title}</h2>
									</a>
									<p>${board4.content}</p>
								</div>
							</div>
							
						</div>
						<div class="col-md-2">
							<div class="my_blog_info">

								<ul class="blog_meta list">
									<li><a href="#">
									<img src="resources/upload/user/${board4.user_image}" width="20px">${board4.user_nickname}</a></li>
									<li><a><i class="lnr lnr-calendar-full"></i>${board4.content_date}</a></li>
									<li><a><i class="lnr lnr-eye"></i>${board4.content_count}</a></li>
						
							
								</ul>
							</div>
						</div>
					</article>

					
				</c:forEach>
					

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