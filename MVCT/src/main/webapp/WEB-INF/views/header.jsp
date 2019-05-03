<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>Bold - Multipurpose Template</title>
<meta name="description" content="Multipurpose bootstrap template">

<!--[if IE]> <meta http-equiv="X-UA-Compatible" content="IE=edge"> <![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Google Fonts -->
<link
	href="http://fonts.googleapis.com/css?family=Raleway:300,300i,400,400i,500,600,700"
	rel="stylesheet">

<link rel="stylesheet" href="resources/assets/css/plugins.min.css">
<link rel="stylesheet" href="resources/assets/css/settings.css">
<link rel="stylesheet" href="resources/assets/css/layers.css">
<link rel="stylesheet" href="resources/assets/css/navigation.css">
<link rel="stylesheet" href="resources/assets/css/style.css">

<!-- basasak css 추가 -->
<link rel="stylesheet" href="resources/assets/css/basasak.css">

<!-- Favicon -->
<link rel="icon" type="image/png" href="resources/assets/images/icons/favicon.png">
<link rel="apple-touch-icon" sizes="57x57"
	href="resources/assets/images/icons/faviconx57.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="resources/assets/images/icons/faviconx72.png">

<!-- Modernizr -->
<script src="resources/assets/js/modernizr.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>
	<header class="header header3 white sticky-header">
		<div class="header-top">
			<div class="container-fluid">

				<div class="social-icons hidden-xs pull-left">
					<a href="#" class="social-icon" title="Facebook"><i
						class="fa fa-facebook"></i></a> <a href="#" class="social-icon"
						title="Twitter"><i class="fa fa-twitter"></i></a> <a href="#"
						class="social-icon" title="Github"><i class="fa fa-github"></i></a>
					<a href="#" class="social-icon" title="Linkedin"><i
						class="fa fa-linkedin"></i></a> <a href="#" class="social-icon"
						title="Instagram"><i class="fa fa-instagram"></i></a> <a href="#"
						class="social-icon" title="Youtube"><i class="fa fa-youtube"></i></a>

				</div>

				<div class="top-links pull-right">
					<c:if test="${empty id}">
						<a href="login.do">로그인</a>
						<a href="register.do">회원가입</a>
					</c:if>
					<c:if test="${!empty id}">
						<a href="login.jsp"><c:out value="${id}"></c:out> </a>
						<a href="register.jsp">마이페이지</a>
						<a href="logout.do">로그아웃</a>
					</c:if>
					<div class="header-right header-cart-wrap">
						<div
							class="dropdown header-dropdown cart-dropdown pull-right header-cart-wrap2">
							<a href="#" class="header-cart-btn" data-toggle="dropdown"
								 aria-haspopup="true" aria-expanded="false"> <span>
									<i class="fa fa-shopping-basket"></i> <span
									class="dcart-total-count" id="sbcnt">${sb_count}</span>
							</span>
							</a>
							<div class="dropdown-menu">
								<p>
									2 item(s) in your cart - <span>$279.00</span>
								</p>
								<div class="dcart-products">
									<div class="product">
										<figure>
											<a href="#"> <img
												src="resources/assets/images/products/thumbs/product1.jpg"
												alt="Product">
											</a>
										</figure>
										<div class="product-meta">
											<h5 class="product-title">
												<a href="#">Oluptate cumque quo archi deleni.</a>
											</h5>
											<div class="product-price-container">
												<span class="product-price">$180.00</span>
											</div>
											<!-- End .product-price-container -->
											<span class="product-quantity">x 1</span>
										</div>
										<!-- End .product-meta -->
										<a href="#" class="delete-btn" title="Delete Product"><i
											class="fa fa-times"></i></a>
									</div>
									<!-- End .product -->
									<div class="product">
										<figure>
											<a href="#"> <img
												src="resources/assets/images/products/thumbs/product2.jpg"
												alt="Product">
											</a>
										</figure>
										<div class="product-meta">
											<h5 class="product-title">
												<a href="#">Lorem ipsum dolor sit amet consect.</a>
											</h5>
											<div class="product-price-container">
												<span class="old-price">$140.00</span> <span
													class="product-price">$99.00</span>
											</div>
											<!-- End .product-price-container -->
											<span class="product-quantity">x 2</span>
										</div>
										<!-- End .product-meta -->
										<a href="#" class="delete-btn" title="Delete Product"><i
											class="fa fa-times"></i></a>
									</div>
									<!-- End .product -->
								</div>
								<!-- End .dcart-products -->

								<div class="dcart-action-container">
									<div class="dcart-action-info">
										<p>
											Shipping: <span>$12.00</span>
										</p>
										<p>
											Tax: <span>Free</span>
										</p>
										<p>
											Total: <span>$390.00</span>
										</p>
									</div>
									<!-- End .dcart-action-info -->

									<div class="dcart-action">
										<a href="cartView.do" class="btn btn-custom2 btn-sm">View
											Cart</a> <a href="#" class="btn btn-custom btn-sm">Checkout</a>
									</div>
									<!-- End .dcart-action -->
								</div>
								<!-- End .dcart-action-container -->
							</div>
							<!-- End .dropdown-menu -->
						</div>
						<!-- End .cartdropdown -->
					</div>
					<!-- End .header-right -->



				</div>
				<!-- End .top-links -->
			</div>
			<!-- End .container-fluid -->
		</div>
		<!-- End .header-top -->

		<div class="header-inner">
			<a href="index.do" class="site-logo"
				title="Bold - Multipurpose Template"> <img
				src="resources/assets/images/mainLogo1.png" data-rjs="3" alt="Bold Logo">
				<span class="sr-only">Bold</span>
			</a>
			<!--    <div class="container-fluid">
                       

                        <div class="header">
                            <a href="index.html" class="site-logo" title="Bold - Multipurpose Template">
                                <img src="resources/assets/images/mainLogo.png" data-rjs="3" alt="Bold Logo">
                                <span class="sr-only">Bold</span>
                            </a>
                        </div>End .header-center

                        
                    </div> -->
			<!-- End .container-fluid -->
		</div>
		<!-- End .header-inner -->

		<div class="header-bottom custom">
			<div class="container-fluid">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#main-nav-container"
					aria-expanded="false">
					<span class="toggle-text">Menu</span> <span class="toggle-wrapper">
						<span class="sr-only">Toggle Menu</span> <span class="icon-bar"></span>
						<span class="icon-bar"></span> <span class="icon-bar"></span>
					</span>
				</button>
				<div class="collapse navbar-collapse" id="main-nav-container">
					<ul class="nav navbar-nav navbar-nav-table">
						<li class="dropdown active"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown" role="button"
							aria-expanded="false">Home</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">제품소개</a>
							<ul class="dropdown-menu col-lg-12" role="menu">
								<li class="dropdown"><a href="cookielist.do"
									class="dropdown-toggle text-center" data-toggle="dropdown"
									role="button" aria-expanded="false">비스켓</a></li>
								<li class="dropdown"><a href="#"
									class="dropdown-toggle text-center" data-toggle="dropdown"
									role="button" aria-expanded="false">스낵</a></li>
								<li class="dropdown"><a href="#"
									class="dropdown-toggle text-center" data-toggle="dropdown"
									role="button" aria-expanded="false">초코</a></li>
								<li class="dropdown"><a href="#"
									class="dropdown-toggle text-center" data-toggle="dropdown"
									role="button" aria-expanded="false">기타</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">달콤한소리</a>
							<ul class="dropdown-menu col-lg-12" role="menu">
								<li class="dropdown">
								<li><a href="product.html" class="text-center">리뷰게시판</a></li>
								<li><a href="product2.html" class="text-center">공지사항</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">고객센터</a>
							<ul class="dropdown-menu col-lg-12" role="menu">
								<li class="dropdown">
								<li><a href="product.html" class="text-center">Q&A</a></li>
								<li><a href="product.html" class="text-center">FAQ</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">회사소개</a>
							<ul class="dropdown-menu col-lg-12" role="menu">
								<li><a href="product.html" class="text-center">오시는길</a></li>
								<li><a href="product.html" class="text-center">인사말</a></li>
							</ul></li>
						<li><a href="#" class="header-search-toggle" role="button"
							title="Open Search"><span class="visible-inline-xs">Search</span><i
								class="fa fa-search"></i></a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- End .container-fluid -->
		</div>
		<!-- End .header-bottom -->
	</header>
	<!-- End .header -->

	<div class="header-search-form">
		<a href="#" class="header-search-toggle" title="Close"><i
			class="fa fa-times"></i></a>
		<form action="#">
			<input type="search" class="form-control" placeholder="Type in here"
				required>
		</form>
	</div>
	<!-- End .header-search-form -->
</body>
</html>