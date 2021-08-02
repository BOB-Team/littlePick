<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
	<!-- Basic Page Info -->
	<meta charset="utf-8">
	<title>상품 관리 페이지</title>

	<!-- Site favicon -->
	<link rel="apple-touch-icon" sizes="180x180" href="resources/admin/resources/vendors/images/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="resources/admin/resources/vendors/images/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="resources/admin/resources/vendors/images/favicon-16x16.png">

	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="resources/admin/resources/vendors/styles/core.css">
	<link rel="stylesheet" type="text/css" href="resources/admin/resources/vendors/styles/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="resources/admin/resources/plugins/datatables/css/dataTables.bootstrap4.min.css">
	<link rel="stylesheet" type="text/css" href="resources/admin/resources/plugins/datatables/css/responsive.bootstrap4.min.css">
	<link rel="stylesheet" type="text/css" href="resources/admin/resources/vendors/styles/style.css">

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-119386393-1');
	</script>
</head>
<body>


	<div class="header">
		<div class="header-left">
			<div class="menu-icon dw dw-menu"></div>
			<!--   <div class="search-toggle-icon dw dw-search2" data-toggle="header_search"></div>
			<div class="header-search">
				<form>
					<div class="form-group mb-0">
						<i class="dw dw-search2 search-icon"></i>
						<input type="text" class="form-control search-input" placeholder="Search Here">
						<div class="dropdown">
							<a class="dropdown-toggle no-arrow" href="#" role="button" data-toggle="dropdown">
								<i class="ion-arrow-down-c"></i>
							</a>
							<div class="dropdown-menu dropdown-menu-right">
								<div class="form-group row">
									<label class="col-sm-12 col-md-2 col-form-label">From</label>
									<div class="col-sm-12 col-md-10">
										<input class="form-control form-control-sm form-control-line" type="text">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-12 col-md-2 col-form-label">To</label>
									<div class="col-sm-12 col-md-10">
										<input class="form-control form-control-sm form-control-line" type="text">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-12 col-md-2 col-form-label">Subject</label>
									<div class="col-sm-12 col-md-10">
										<input class="form-control form-control-sm form-control-line" type="text">
									</div>
								</div>
								<div class="text-right">
									<button class="btn btn-primary">Search</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div> -->
		</div>
		<div class="header-right">
			<div class="dashboard-setting user-notification">
				<div class="dropdown">
					<a class="dropdown-toggle no-arrow" href="resources/admin/resources/javascript:;" data-toggle="right-sidebar">
						<i class="dw dw-settings2"></i>
					</a>
				</div>
			</div>
			<!--  <div class="user-notification">
				<div class="dropdown">
					<a class="dropdown-toggle no-arrow" href="#" role="button" data-toggle="dropdown">
						<i class="icon-copy dw dw-notification"></i>
						<span class="badge notification-active"></span>
					</a>
					<div class="dropdown-menu dropdown-menu-right">
						<div class="notification-list mx-h-350 customscroll">
							<ul>
								<li>
									<a href="#">
										<img src="vendors/images/img.jpg" alt="">
										<h3>John Doe</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed...</p>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="vendors/images/photo1.jpg" alt="">
										<h3>Lea R. Frith</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed...</p>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="vendors/images/photo2.jpg" alt="">
										<h3>Erik L. Richards</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed...</p>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="vendors/images/photo3.jpg" alt="">
										<h3>John Doe</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed...</p>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="vendors/images/photo4.jpg" alt="">
										<h3>Renee I. Hansen</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed...</p>
									</a>
								</li>
								<li>
									<a href="#">
										<img src="vendors/images/img.jpg" alt="">
										<h3>Vicki M. Coleman</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed...</p>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div> -->
			<div class="user-info-dropdown">
				<div class="dropdown">
					<a class="dropdown-toggle" href="#" role="button" data-toggle="dropdown">
						<span class="user-icon">
							<img src="resources/admin/resources/images/LittlePickLogo.png" alt="">
						</span>
						<span class="user-name">admin</span>
					</a>
					<div class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
						<a class="dropdown-item" href="profile.html"><i class="dw dw-user1"></i> Profile</a>
						<a class="dropdown-item" href="profile.html"><i class="dw dw-settings2"></i> Setting</a>
						<a class="dropdown-item" href="faq.html"><i class="dw dw-help"></i> Help</a>
						<a class="dropdown-item" href="login.html"><i class="dw dw-logout"></i> Log Out</a>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- ---------레이아웃 세팅-------------------------------------------------------------------------------------------------------- -->
	<div class="right-sidebar">
		<div class="sidebar-title">
			<h3 class="weight-600 font-16 text-blue">
				레이아웃 세팅
				<span class="btn-block font-weight-400 font-12">User Interface Settings</span>
			</h3>
			<div class="close-sidebar" data-toggle="right-sidebar-close">
				<i class="icon-copy ion-close-round"></i>
			</div>
		</div>
		<div class="right-sidebar-body customscroll">
			<div class="right-sidebar-body-content">
				<h4 class="weight-600 font-18 pb-10">Header Background</h4>
				<div class="sidebar-btn-group pb-30 mb-10">
					<a href="javascript:void(0);" class="btn btn-outline-primary header-white active">White</a>
					<a href="javascript:void(0);" class="btn btn-outline-primary header-dark">Dark</a>
				</div>

				<h4 class="weight-600 font-18 pb-10">Sidebar Background</h4>
				<div class="sidebar-btn-group pb-30 mb-10">
					<a href="javascript:void(0);" class="btn btn-outline-primary sidebar-light ">White</a>
					<a href="javascript:void(0);" class="btn btn-outline-primary sidebar-dark active">Dark</a>
				</div>

				<h4 class="weight-600 font-18 pb-10">Menu Dropdown Icon</h4>
				<div class="sidebar-radio-group pb-10 mb-10">
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebaricon-1" name="menu-dropdown-icon" class="custom-control-input" value="icon-style-1" checked="">
						<label class="custom-control-label" for="sidebaricon-1"><i class="fa fa-angle-down"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebaricon-2" name="menu-dropdown-icon" class="custom-control-input" value="icon-style-2">
						<label class="custom-control-label" for="sidebaricon-2"><i class="ion-plus-round"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebaricon-3" name="menu-dropdown-icon" class="custom-control-input" value="icon-style-3">
						<label class="custom-control-label" for="sidebaricon-3"><i class="fa fa-angle-double-right"></i></label>
					</div>
				</div>

				<h4 class="weight-600 font-18 pb-10">Menu List Icon</h4>
				<div class="sidebar-radio-group pb-30 mb-10">
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebariconlist-1" name="menu-list-icon" class="custom-control-input" value="icon-list-style-1" checked="">
						<label class="custom-control-label" for="sidebariconlist-1"><i class="ion-minus-round"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebariconlist-2" name="menu-list-icon" class="custom-control-input" value="icon-list-style-2">
						<label class="custom-control-label" for="sidebariconlist-2"><i class="fa fa-circle-o" aria-hidden="true"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebariconlist-3" name="menu-list-icon" class="custom-control-input" value="icon-list-style-3">
						<label class="custom-control-label" for="sidebariconlist-3"><i class="dw dw-check"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebariconlist-4" name="menu-list-icon" class="custom-control-input" value="icon-list-style-4" checked="">
						<label class="custom-control-label" for="sidebariconlist-4"><i class="icon-copy dw dw-next-2"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebariconlist-5" name="menu-list-icon" class="custom-control-input" value="icon-list-style-5">
						<label class="custom-control-label" for="sidebariconlist-5"><i class="dw dw-fast-forward-1"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebariconlist-6" name="menu-list-icon" class="custom-control-input" value="icon-list-style-6">
						<label class="custom-control-label" for="sidebariconlist-6"><i class="dw dw-next"></i></label>
					</div>
				</div>

				<div class="reset-options pt-30 text-center">
					<button class="btn btn-danger" id="reset-settings">Reset Settings</button>
				</div>
			</div>
		</div>
	</div>
<!-- ----왼쪽 메뉴바------------------------------------------------------------------------------------------------------------- -->
	<div class="left-side-bar">
		<div class="brand-logo">
			<a href="index.html">
				<img src="vendors/images/deskapp-logo.svg" alt="" class="dark-logo">
				<img src="vendors/images/deskapp-logo-white.svg" alt="" class="light-logo">
			</a>
			<div class="close-sidebar" data-toggle="left-sidebar-close">
				<i class="ion-close-round"></i>
			</div>
		</div>
				<div class="menu-block customscroll">
			<div class="sidebar-menu">
				<ul id="accordion-menu">
					<li class="dropdown">
						<a href="main.do?smallpack=1" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-house-1"></span><span class="mtext">홈페이지 이동</span>
						</a>
					
					</li>
		  			
					<li class="dropdown">
						<a href="admin_member.do" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-library"></span><span class="mtext">회원 관리</span>
						</a>
						<!-- 
						<ul class="submenu">
							<li><a href="datatable.html">회원 정보</a></li>
						</ul>
						 -->
					</li>
					
		
		<li class="dropdown">
						<a href="admin_product.do" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-apartment"></span><span class="mtext"> 상품 관리 </span>
						</a>
						
					</li>
		
		
					<li class="dropdown">
						<a href="javascript:;" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-edit2"></span><span class="mtext">문의사항 관리</span>
						</a>
						<ul class="submenu">
							<li><a href="form-basic.html">문의사항</a></li>
						</ul>
					</li>

					
<!--  					
					<li class="dropdown">
						<a href="javascript:;" class="dropdown-toggle">
							<span class="micon dw dw-paint-brush"></span><span class="mtext">Icons</span>
						</a>
						<ul class="submenu">
							<li><a href="font-awesome.html">FontAwesome Icons</a></li>
							<li><a href="foundation.html">Foundation Icons</a></li>
							<li><a href="ionicons.html">Ionicons Icons</a></li>
							<li><a href="themify.html">Themify Icons</a></li>
							<li><a href="custom-icon.html">Custom Icons</a></li>
						</ul>
					</li>
-->					
					
					<li class="dropdown">
						<a href="highchart.html" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-analytics-21"></span><span class="mtext">매출관리</span>
						</a>
						
<!-- 				
					</li>
					<li class="dropdown">
						<a href="javascript:;" class="dropdown-toggle">
							<span class="micon dw dw-right-arrow1"></span><span class="mtext">login/forgot/reset</span>
						</a>
						<ul class="submenu">
							<li><a href="video-player.html">Video Player</a></li>
							<li><a href="login.html">Login</a></li>
							<li><a href="forgot-password.html">Forgot Password</a></li>
							<li><a href="reset-password.html">Reset Password</a></li>
						</ul>
					</li>
 -->					

<!-- 
					<li class="dropdown">
						<a href="javascript:;" class="dropdown-toggle">
							<span class="micon dw dw-copy"></span><span class="mtext">Extra Pages</span>
						</a>
						<ul class="submenu">
							<li><a href="blank.html">Blank</a></li>
							<li><a href="contact-directory.html">Contact Directory</a></li>
							<li><a href="blog.html">Blog</a></li>
							<li><a href="blog-detail.html">Blog Detail</a></li>
							<li><a href="product.html">Product</a></li>
							<li><a href="product-detail.html">Product Detail</a></li>
							<li><a href="faq.html">FAQ</a></li>
							<li><a href="profile.html">Profile</a></li>
							<li><a href="gallery.html">Gallery</a></li>
							<li><a href="pricing-table.html">Pricing Tables</a></li>
						</ul>
					</li>
					
 -->
 
 <!--  					
					<li class="dropdown">
						<a href="javascript:;" class="dropdown-toggle">
							<span class="micon dw dw-list3"></span><span class="mtext">Multi Level Menu</span>
						</a>
						<ul class="submenu">
							<li><a href="javascript:;">Level 1</a></li>
							<li><a href="javascript:;">Level 1</a></li>
							<li><a href="javascript:;">Level 1</a></li>
							<li class="dropdown">
								<a href="javascript:;" class="dropdown-toggle">
									<span class="micon fa fa-plug"></span><span class="mtext">Level 2</span>
								</a>
								<ul class="submenu child">
									<li><a href="javascript:;">Level 2</a></li>
									<li><a href="javascript:;">Level 2</a></li>
								</ul>
							</li>
							<li><a href="javascript:;">Level 1</a></li>
							<li><a href="javascript:;">Level 1</a></li>
							<li><a href="javascript:;">Level 1</a></li>
						</ul>
					</li>
					
	-->				
					<li>
						<a href="sitemap.html" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-diagram"></span><span class="mtext">페이지 바로가기</span>
						</a>
					</li>
<!--  				
					<li>
						<a href="chat.html" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-chat3"></span><span class="mtext">Chat</span>
						</a>
					</li>
					<li>
						<a href="invoice.html" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-invoice"></span><span class="mtext">Invoice</span>
						</a>
					</li>
-->						
					<li>
						<div class="dropdown-divider"></div>
					</li>
					
					
				</ul>
			</div>
		</div>
	</div>
	<div class="mobile-menu-overlay"></div>

<!-- ----------------------------------------------------------------------------------------------------------------- -->
 
	<div class="main-container">
		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="min-height-200px">
				<div class="page-header">
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<div class="title">
								<h4>상품 관리</h4>
							</div>
							<!-- 
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">DataTable</li>
								</ol>
							</nav>
						</div>
						<div class="col-md-6 col-sm-12 text-right">
							<div class="dropdown">
								<a class="btn btn-primary dropdown-toggle" href="#" role="button" data-toggle="dropdown">
									January 2018
								</a>
								<div class="dropdown-menu dropdown-menu-right">
									<a class="dropdown-item" href="#">Export List</a>
									<a class="dropdown-item" href="#">Policies</a>
									<a class="dropdown-item" href="#">View Assets</a>
								</div>
							</div>
						</div>
					</div>
				</div>
-->				
				
<!-- ----------------------------------------------------------------------------------------------------------------- -->				
				
			
				<!-- Checkbox select Datatable End -->
				<!-- Export Datatable start -->
				<div class="card-box mb-30">
				
	
					<div class="pd-20">
						<h4 class="text-blue h4">상품 목록</h4>
					</div>
					
				
					<form method="get" action="productUpdate.do">
					
					<input type="submit" value="수정"/>
					<input type="button" value="삭제" onClick="location.href='productDelete.do?product_num=${product.product_num}'">
					<input type="reset" value="초기화"/>
		
					<div class="pb-20">
					
								
						<table class="checkbox-datatable table nowrap">
							
							
									
									
									<tr><th class="table-plus datatable-nosort"></th></tr>
									
									<tr><th>상품번호</th> <td><input type="text" name="product_num" value="${product.product_num}" readonly></td></tr>
									<tr><th>카테고리 번호</th>	<td><input type="text" value="${product.category_num}"/></td></tr>
									<tr><th>상품이름</th> <td><input type="text" name="product_name" value="${product.product_name}"/></td></tr>
									<tr><th>상품정보</th> <td><input type="text" name="product_info" value="${product.product_info}"/></td></tr>
									<tr><th>상품이미지</th> <td>
									<img src="/littlePick/resources/upload/board/${fn:split(product.product_image, '/')[0]}" style= "width=300px; height=300px;">
									<img src="/littlePick/resources/upload/board/${fn:split(product.product_image, '/')[1]}" style= "width=300px; height=300px;">
									<img src="/littlePick/resources/upload/board/${fn:split(product.product_image, '/')[2]}" style= "width=300px; height=300px;">
									
									<input type="text" name="product_image" value="${product.product_image}"/>
									</td></tr>
									<tr><th>판매가격</th> <td><input type="text" name="sale_price" value="${product.sale_price}"/></td></tr>
									<tr><th>현재가격</th> <td><input type="text" name="now_price" value="${product.now_price}"/></td></tr>
									<tr><th>입고가</th> <td><input type="text" name="in_price" value="${product.in_price}"/></td></tr>
									<tr><th>재고</th> <td><input type="text" name="stock" value="${product.stock}"/></td></tr>
									<tr><th>조회수</th> <td><input type="text" name="product_view" value="${product.product_view}"/></td></tr>
									<tr><th>배송번호</th> <td><input type="text" name="delivery_num" value="${product.delivery_num}"/></td></tr>
									<tr><th>소포장</th><td><input type="text" name="smallpack" value="${product.smallpack}"/></td></tr>
									<tr><th>상품태그<th><td><input type="text" name="product_tag" value="${product.product_tag}"/></td></tr>
								
					
							
								
								<!-- 	<td class="table-plus"></td>  -->
									
									
	
									
									
								
						</table>
					</div>
					
				</form>
				</div>
				
				
				
			<!-- href="productUpdate.do?product_num=" 
			x<td><input type="text" value=""/></td>-->	
				
				
			




				<!-- Export Datatable End -->
			</div>
			<div class="footer-wrap pd-20 mb-20 card-box">
				[  LittlePick  ]  made by  조다운, 이혜미, 조영주, 김준호
			</div>
		</div>
	</div>
	<!-- js -->
	<script src="resources/admin/resources/vendors/scripts/core.js"></script>
	<script src="resources/admin/resources/vendors/scripts/script.min.js"></script>
	<script src="resources/admin/resources/vendors/scripts/process.js"></script>
	<script src="resources/admin/resources/vendors/scripts/layout-settings.js"></script>
	<script src="src/plugins/datatables/js/jquery.dataTables.min.js"></script>
	<script src="resources/admin/resources/plugins/datatables/js/dataTables.bootstrap4.min.js"></script>
	<script src="resources/admin/resources/plugins/datatables/js/dataTables.responsive.min.js"></script>
	<script src="resources/admin/resources/plugins/datatables/js/responsive.bootstrap4.min.js"></script>
	<!-- buttons for Export datatable -->
	<script src="resources/admin/resources/plugins/datatables/js/dataTables.buttons.min.js"></script>
	<script src="resources/admin/resources/plugins/datatables/js/buttons.bootstrap4.min.js"></script>
	<script src="resources/admin/resources/plugins/datatables/js/buttons.print.min.js"></script>
	<script src="resources/admin/resources/plugins/datatables/js/buttons.html5.min.js"></script>
	<script src="resources/admin/resources/plugins/datatables/js/buttons.flash.min.js"></script>
	<script src="resources/admin/resources/plugins/datatables/js/pdfmake.min.js"></script>
	<script src="resources/admin/resources/plugins/datatables/js/vfs_fonts.js"></script>
	<!-- Datatable Setting js -->
	<script src="resources/admin/resources/vendors/scripts/datatable-setting.js"></script></body>
</html></html>