<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<link rel="stylesheet" href="resources/assets/css/style.css">
<!-- basasak css 추가 -->
<link rel="stylesheet" href="resources/assets/css/basasak.css?ver=1">

<!-- Favicon -->
<link rel="icon" type="image/png" href="resources/assets/images/icons/favicon.png">
<link rel="apple-touch-icon" sizes="57x57"
	href="resources/assets/images/icons/faviconx57.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="resources/assets/images/icons/faviconx72.png">

<!-- Modernizr -->
<script src="resources/assets/js/modernizr.js"></script>
</head>
<body>
	<div id="page-loader">
		<div class="sk-double-bounce">
			<div class="sk-child sk-double-bounce1"></div>
			<!-- End .sk-child -->
			<div class="sk-child sk-double-bounce2"></div>
			<!-- End .sk-child -->
		</div>
		<!-- End .sk-double-bounce -->
	</div>
	<!-- End #page-loader -->

	<div id="wrapper">
		<jsp:include page="header.jsp"></jsp:include>

		<div class="main">
			<div class="page-header largest parallax custom text-center"
				style="background-image: url(resources/assets/images/bisciut.png)"
				data-0="background-position:50% 50%;"
				data-top-bottom="background-position:50% 100%">
				<div class="container-fluid">
					<h1>Biscuit</h1>
					<ol class="breadcrumb">
						<li><a href="index.html">Home</a></li>
						<li><a href="#">상품소개</a></li>
						<li class="active">비스켓</li>
					</ol>
				</div>
				<!-- End .container-fluid -->
			</div>
			<!-- End .page-header -->

			<div class="container-fluid">
				<div class="row flex-shop">
					<aside class="col-md-3 sidebar shop-sidebar">
						<div class="widget">
							<div class="filter-group-widget">
								<div class="panel-group" role="tablist"
									aria-multiselectable="true">
									<div class="snb f1">
										<!-- 제품 -->
										<h2>
											<img src="resources/assets/images/blog/제품소개.png" alt="제품소개"> <span>
												<img alt="인포" src="resources/assets/images/blog/인포.png">
											</span>
										</h2>
										<div class="snb-wrap hover-relative">
											<ul style="list-style-type: none;">
												<li class="info-hover-li"><a href="/Project/cookie.jsp">비스켓
														<img class="info-hover-img"
														src="resources/assets/images/blog/비스켓.png" alt="비스켓" />
												</a></li>
												<li class="info-hover-li2"><a
													href="/Project/cookie.jsp"> 스낵 <img
														class="info-hover-img2" src="resources/assets/images/blog/스낵.png"
														alt="스낵" />
												</a></li>
												<li class="info-hover-li3"><a
													href="/Project/cookie.jsp">초코 <img
														class="info-hover-img3" src="resources/assets/images/blog/초코.png"
														alt="초코" />
												</a></li>
												<li><a href="/Project/cookie.jsp">기타</a></li>
											</ul>
										</div>

										<div class="banner-wrap">
											<ul style="list-style-type: none;">
												<li class="first"><a
													href="http://www.ht.co.kr/product/list"
													style="text-decoration: none;"> <img
														src="resources/assets/images/blog/해태로고.png" alt="해태제과"
														style="outline: none;">
												</a></li>
												<li class="first"><a
													href="http://www.ht.co.kr/product/list"
													style="outline: none;"> <img
														src="resources/assets/images/blog/빙그레로고.png" alt="빙그레"
														style="outline: none;">
												</a></li>
												<li class="first"><a
													href="http://www.ht.co.kr/product/list"
													style="outline: none;"> <img
														src="resources/assets/images/blog/오리온로고.png" alt="오리온"
														style="outline: none;">
												</a></li>
												<li class="first"><a
													href="http://www.ht.co.kr/product/list"
													style="outline: none;"> <img
														src="resources/assets/images/blog/롯데로고.png" alt="롯데"
														style="outline: none;">
												</a></li>
												<li class="first"><a
													href="http://www.ht.co.kr/product/list"
													style="outline: none;"> <img
														src="resources/assets/images/blog/농심로고.png" alt="농심"
														style="outline: none;">
												</a></li>
												<li class="first"><a
													href="http://www.ht.co.kr/product/list"
													style="outline: none;" target="_blank"> <img
														src="resources/assets/images/blog/노브랜드로고.png" alt="노브랜드"
														style="outline: none;">
												</a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- End .filter-widget -->
							</div>
							<!-- End .widget -->
					</aside>
					<div class="col-md-9 ">
						<div class="category-filter-row">
							<div class="right">
								<span class="cat-product-count"></span>
								<div class="filter-product-view">
									<a href="category.html" class="btn btn-custom"
										title="Category Grid"><i class="fa fa-th"></i></a> <a
										href="category-list.html" class="btn btn-gray"
										title="Category List"><i class="fa fa-th-list"></i></a>
								</div>
							</div>
							<!-- end .right -->
							<div class="left">
								<div class="filter-container filter-sort">
									<label>Sort by:</label> <select class="form-control input-sm">
										<option value="Date">Date</option>
										<option value="Color">Color</option>
										<option value="Size">Size</option>
										<option value="Price">Price</option>
									</select>
								</div>
								<!-- End .filter-sort -->
								<div class="filter-container filter-show">
									<label>Show:</label> <select class="form-control input-sm">
										<option value="10">10</option>
										<option value="15">15</option>
										<option value="20">20</option>
										<option value="25">25</option>
									</select>
								</div>
								<!-- End .filter-show -->
							</div>
							<!-- End .left -->
						</div>
						<!-- End .category-filter-row -->

						<div class="products-container max-col-3">
							<div class="row">
								<c:forEach var="article" items="${articleList}">
									<div class="product">
										<div class="product-top">
											<figure><!-- &pageNum=${currentPage} -->
												<a
													href="cookieView.do?c_serial=${article.c_serial}"
													title="Product Name"> <img src="${article.c_img1 }"
													alt="Product image" class="product-image">
												</a>
											</figure>
											<div class="product-action-container">
												<a href="#" class="btn product-add-btn"
													data-toggle="tooltip" title="Add to Cart"><i
													class="fa fa-shopping-cart"></i></a> <a href="#"
													class="btn product-wishlist-btn" data-toggle="tooltip"
													title="Add to Wishlist"><i class="fa fa-heart"></i></a> <a
													href="#" class="btn product-compare-btn"
													data-toggle="tooltip" title="Compare"><i
													class="fa fa-retweet"></i></a>
											</div>
											<!-- End .product-action-container -->
										</div>
										<!-- End .product-top -->
										<h3 class="product-title">
											<a href="product.html">${article.c_product}</a>
										</h3>
										<div class="ratings-container">
											<a href="#" class="product-ratings" title="7 Ratings"> <span
												class="ratings" style="width: 60%"> <span
													class="ratings-text sr-only"></span>
											</span> <!-- End .ratings -->
											</a>
											<!-- End .product-ratings -->
										</div>
										<!-- End .ratings-container -->
										<div class="product-price-container">
											<span class="product-price"><fmt:formatNumber
													value="${article.c_price}" pattern="#,###" /> 원</span>
										</div>
										<!-- End .product-price-container -->
									</div>
								</c:forEach>
								<!-- End .product -->
							</div>
							<!-- end .row -->
						</div>
						<!-- End .products-container -->

						<div class="pagination-wrapper">
							<nav class="pagination-container">
								<label></label>
								<ul class="pagination">
									<c:if test="${pgList.startPage > pgList.blockSize}">
										<a
											href="/Project/cookielist.do?pageNum=${pgList.startPage-pgList.blockSize}&search=${search}&searchtext=${searchtext}">[이전]</a>
									</c:if>
									<c:forEach var="i" begin="${pgList.startPage}"
										end="${pgList.endPage}">
										<c:if test="${pgList.currentPage==i}">
											<li class="active"><a
												href="/Project/cookielist.do?pageNum=${i}&search=${search}&searchtext=${searchtext}"><font
													color="white"><b>${i}</b></font></a></li>
										</c:if>
										<c:if test="${pgList.currentPage!=i}">
											<li><a
												href="/Project/cookielist.do?pageNum=${i}&search=${search}&searchtext=${searchtext}"><font
													color="white"><b>${i}</b></font></a></li>
										</c:if>
									</c:forEach>
									<!-- <li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li> -->
									<li><a href="#" aria-label="Next"> <span
											aria-hidden="true"><i class="fa fa-angle-right"></i></span>
									</a></li>
									<c:if test="${pgList.endPage<pgList.pageCount}">
										<li><a
											href="/Project/cookielist.do?pageNum=${pgList.startPage+pgList.blockSize}&search=${search}&searchtext=${searchtext}"
											aria-label="Next"> <span aria-hidden="true"><i
													class="fa fa-angle-right"></i></span></a></li>
									</c:if>
								</ul>
							</nav>
						</div>
						<!-- End .pagination-wrapper -->
					</div>
					<!-- End .col-md-9 -->


				</div>
				<!-- End .row -->
			</div>
			<!-- End .container-fluid -->
		</div>
		<!-- End .main -->

		<footer class="footer">
			<div class="footer-bottom">
				<div class="container-fluid">
					<div class="footer-left">
						<div class="social-icons">
							<label>Find Us:</label> <a href="#" class="social-icon"
								title="Facebook"><i class="fa fa-facebook"></i></a> <a href="#"
								class="social-icon" title="Twitter"><i class="fa fa-twitter"></i></a>
							<a href="#" class="social-icon" title="Github"><i
								class="fa fa-github"></i></a> <a href="#" class="social-icon"
								title="Linkedin"><i class="fa fa-linkedin"></i></a> <a href="#"
								class="social-icon" title="Tumblr"><i class="fa fa-tumblr"></i></a>
							<a href="#" class="social-icon" title="Flickr"><i
								class="fa fa-flickr"></i></a> <a href="#" class="social-icon"
								title="Snapchat"><i class="fa fa-snapchat"></i></a> <a href="#"
								class="social-icon" title="Vine"><i class="fa fa-vine"></i></a>
						</div>
						<!-- End .social-icons -->
					</div>
					<!-- End .footer-left -->

					<div class="footer-right">
						<ul class="footer-menu">
							<li class="active"><a href="#">Home</a></li>
							<li><a href="#">Services</a></li>
							<li><a href="#">Features</a></li>
							<li><a href="#">FaQS</a></li>
							<li><a href="#">Support</a></li>
							<li><a href="#">Contact Us</a></li>
						</ul>
						<p class="copyright">
							<strong>Bold</strong> multipurpose template - All rights reserved
							- 2016 &copy; Made by <a href="http://eonythemes.com"
								target="_blank" title="eonythemes">eonythemes</a>.
						</p>
					</div>
					<!-- End .footer-right -->
				</div>
				<!-- End .container-fluid -->
			</div>
			<!-- End .footer-bottom -->
		</footer>
		<!-- End .footer -->

	</div>
	<!-- End #wrapper -->
	<a id="scroll-top" href="#top" title="Scroll top"><i
		class="fa fa-angle-up"></i></a>

	<!-- End -->
	<script src="resources/assets/js/plugins.min.js"></script>
	<script src="resources/assets/js/main.js"></script>
</body>
</html>

<!-- <c:if test="${pgList.endPage>pgList.pageCount}"><c:set var="endPage" value="${pgList.pageCount}"/> </c:if>
<c:if test="${pgList.startPage > pgList.blockSize}"><a href="/JspBoard2/list.do?pageNum=${pgList.startPage-pgList.blockSize}&search=${search}&searchtext=${searchtext}">[이전]</a> </c:if>
<c:forEach var="i" begin="${pgList.startPage}" end="${pgList.endPage}">
<a href="/JspBoard2/list.do?pageNum=${i}&search=${search}&searchtext=${searchtext}"><c:if test="${pgList.currentPage==i}"><font color="red"><b>[${i}]</b></font></c:if>
<c:if test="${pgList.currentPage!=i}">[${i}]</c:if></a>
</c:forEach>
<c:if test="${pgList.endPage<pgList.pageCount}"><a href="/JspBoard2/list.do?pageNum=${pgList.startPage+pgList.blockSize}&search=${search}&searchtext=${searchtext}">[다음]</a> </c:if>

<p>
검색어 추가(자주 검색이 되는 항목을 잘 선택) 
<form name="test" action="/JspBoard2/list.do">
	<select name="search">
		<option value="subject">제목</option>
		<option value="subject_content">제목+내용</option>
		<option value="writer">작성자</option>
	</select>
	<input type="text" size="15" name="searchtext"> &nbsp; <input type="submit" value="검색">
</form> -->