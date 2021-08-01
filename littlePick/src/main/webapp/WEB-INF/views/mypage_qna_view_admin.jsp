<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
		<h3>${qboard.q_title}</h3>  <!-- 게시글명 -->
		<!-- 작성자 날짜 조회수 댓글 -->
		<div class="blog_info">
			<div class="board-view-info">
			<a><img src="resources/upload/user/${qboard.user_image}" width="50px"></a><a>${board.user_nickname}</a><br><br>
			<a><i class="lnr lnr-calendar-full"></i>${qboard.q_date}</a>
			<a><i class="lnr lnr-eye"></i>${qboard.q_count}</a>
			<a><i class="lnr lnr-bubble"></i>답변 수</a>
			</div>
		</div>
		
	</div>
	<!-- ================ 게시판 상단 끝 ================= -->
  	<!--================ 글 내용 Area =================-->
  	
  	<div class="board-view-content">
  	<a>${qboard.q_content}</a><!-- 글 내용 -->
  	</div>
  	
	<!--================ 글 내용 Area 끝 =================-->
	  <!--================댓글 Area =================-->
	  <div class="board-view-comment">
	   <form action="#" method="post">
	  		<h4>댓글 ${count}</h4><br>
	  		<!-- 댓글쓰기 -->
	  		<div class="comment-input">
	  			
	  			<div class="comment-input-title"> 
				<input type="text" class="form-control" id="comment_content" name="comment_content"
					placeholder="댓글을 입력하세요"></div>
				<div class="comment-input-button">
				<input type="submit" class="button button-postComment button--active" value="입력"></input>
				</div>
			</div>
			<!-- 댓글쓰기 끝 -->
	</form>
	<c:forEach items="${answerList}" var="answer">
			<div class="board-view-comment-list">
	
	  			<div class="board-view-comment-profile">
	  			<a>${answer.admin_id}</a> <!-- 댓글러 -->
	  			</div>
	  	
	  			<div class="board-view-comment-text">
	  			<a>${answer.a_content}</a> <!-- 댓글내용 -->
	  			</div>
	  	
	  			<div class="board-view-comment-sub"><!-- 날짜 -->
	  				<a>${answer.a_date}</a>
	  			</div> 
	  	
	  		</div>
	</c:forEach>
	
	
	  	
		</div>
	  
	  
	  
	  <!--================댓글 Area 끝 =================-->
	  
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