<%-- 
<%
	response.sendRedirect("http://localhost:8090/Project/list.do");
%>
 --%>
 
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
        <link href="http://fonts.googleapis.com/css?family=Raleway:300,300i,400,400i,500,600,700" rel="stylesheet">

        <link rel="stylesheet" href="resources/assets/css/plugins.min.css">
        <link rel="stylesheet" href="resources/assets/css/style.css">
        <!-- basasak css 추가 -->
		<link rel="stylesheet" href="resources/assets/css/basasak.css">
        
        <!-- Favicon -->
        <link rel="icon" type="image/png" href="resources/assets/images/icons/favicon.png">
        <link rel="apple-touch-icon" sizes="57x57" href="resources/assets/images/icons/faviconx57.png">
        <link rel="apple-touch-icon" sizes="72x72" href="resources/assets/images/icons/faviconx72.png">

        <!-- Modernizr -->
        <script src="resources/assets/js/modernizr.js"></script>
    </head>
    <body>
        <div id="page-loader">
            <div class="sk-double-bounce">
                <div class="sk-child sk-double-bounce1"></div><!-- End .sk-child -->
                <div class="sk-child sk-double-bounce2"></div><!-- End .sk-child -->
            </div><!-- End .sk-double-bounce -->
        </div><!-- End #page-loader -->
        
        <div id="wrapper">
           <c:import url="header.jsp"></c:import>
                
            
            <div class="main">
                <div class="page-header largest parallax custom text-center" style="background-image:url(resources/assets/images/page-header-bg.jpg)" data-0="background-position:50% 50%;" data-top-bottom="background-position:50% 100%">
                    <div class="container-fluid">
                        <h1>Elements <small>(Tables)</small></h1>
                        <ol class="breadcrumb">
                            <li><a href="index.html">Home</a></li>
                            <li><a href="#">Pages</a></li>
                            <li class="active">Tables</li>
                        </ol>
                    </div><!-- End .container -->
                </div><!-- End .page-header -->
<!--  -->               



                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12">
                            <h2>글목록<small>(전체글:${pgList.count})</small></h2>
						<div class="table-responsive">
						
							<!-- 데이터의 유무 -->
							<c:if test="${pgList.count==0}">
								<table class="table table-bordered table-hover table-condensed">
								<!-- <table border="1" width="700" cellpadding="0" cellspacing="0" align="center"> -->
									<tr>
										<td align="center">게시판에 저장된 글이 없습니다.</td>
									</tr>
								</table>
							</c:if>
							
						<%-- <c:if test="${pgList.count>0}"> --%>
							<table class="table table-bordered table-hover table-condensed">
								<thead>
									<tr>
										<th align="center" width="50">번호</th>
										<th align="center" width="250">제목</th>
										<th align="center" width="100">작성자</th>
										<th align="center" width="150">작성일</th>
										<th align="center" width="50">조회수</th>
										<th align="center" width="50">추천수</th>
										<!-- <td align="center" width="100">IP</td> -->
									</tr>
								</thead>
								<tbody>
									<c:set var="number" value="${pgList.number}" />
					<c:forEach var="article" items="${articleList}">
						<tr height="30"><!--  onmouseover="this.style.backgroundColor='white'"
							onmouseout="this.style.backgroundColor='#e0ffff'"> -->
							<!-- 게시물번호는 하나씩 감소하면서 출력, 이벤트를 발생시킨 객체를 구분하는 키워드는 this -->
							<td align="center" width="50"><c:out value="${article.r_num}" /> </td>
							<td width="250">
								<!-- 답변글인 경우 먼저 답변이미지를 부착시키는 코드부분 -->
<%-- 								
								<c:if test="${article.re_level>0}">
									<img src="images/level.gif" width="${7*article.re_level}"
										height="16">
									<img src="images/re.gif">
								</c:if>
								<c:if test="${article.re_level==0}">
									<img src="images/level.gif" width="${7*article.re_level}"
										height="16">
										
								</c:if>
 --%>
								
								<!-- 글상세보기 부분  --> 
								<a href="content.do?r_num=${article.r_num}&pageNum=${pgList.currentPage}">${article.r_title}</a>
								<c:if test="${article.r_view>=20}">
									<img src="images/hot.gif" border="0" height="16">
							</td>
							</c:if>
							<td align="center" width="100">${article.m_id}</td>
							<%-- <td align="center" width="150"><fmt:formatDate value="${article.r_date}" timeStyle="medium" pattern="yy.MM.dd (hh:mm)" /></td> --%>
							<td align="center" width="150">${article.r_date}</td>
							<td align="center" width="50">${article.r_view}</td>
							<td align="center" width="50">${article.r_recommend}</td>
							<%-- <td align="center" width="100">${article.ip}</td> --%>
						</tr>
					</c:forEach>
								</tbody>
							</table>
						<%-- </c:if> --%>
						
						
						<!-- <table width="1000"> -->
						<table class="table table-bordered table-hover table-condensed">
							<tr>
								<td align="right" bgcolor="#fff">
									<input type="button" class="btn btn-custom min-width" value="글쓰기" OnClick="window.location='writeForm.do'">
								</td>
							</tr>
						</table>
										
						<form align="center">
						<c:if test="${pgList.startPage > pgList.blockSize}">
				<a href="/Project/review.do?pageNum=${pgList.startPage-pgList.blockSize}&search=${search}&searchtext=${searchtext}">[이전]</a>
			</c:if>
			<c:forEach var="i" begin="${pgList.startPage}"
				end="${pgList.endPage}">
				<a
					href="/Project/review.do?pageNum=${i}&search=${search}&searchtext=${searchtext}">
					<c:if test="${pgList.currentPage==i}">
						<font color="red"><b>[${i}]</b></font>
					</c:if> <c:if test="${pgList.currentPage!=i}">
						${i}
					</c:if>
				</a>
			</c:forEach>
			<c:if test="${pgList.endPage < pgList.pageCount}">
				<a href="/Project/review.do?pageNum=${pgList.startPage+pgList.blockSize}&search=${search}&searchtext=${searchtext}">[다음]</a>
			</c:if>
</form>
			<p>
				<!-- 검색어 추가(자주 검색이 되는 항목을 잘 선택) : 제목, 작성자, 제목+본문 -->
			<form name="test" align="center" action="review.do">
				<select name="search">
					<option value="r_title">제목</option>
					<option value="r_title_r_content">제목+본문</option>
					<option value="m_id">작성자</option>
				</select> <input type="text" size="15" name="searchtext">&nbsp;<input type="submit" value="검색">
			</form>
						
						
						
						</div>
						<!-- End .table-responsive -->
                        </div><!-- End .col-sm-12 -->
                    </div><!-- End .row -->

                    <div class="mb40"></div><!-- space -->

                  
                </div><!-- End .container -->
                <div class="mb80"></div><!-- margin -->
            </div><!-- End .main -->




<%-- 
		<center>
			<b>글목록(전체글:${pgList.count})</b>
			<table width="700">
				<tr>
					<td align="right" bgcolor="#b0e0e6"><a
						href="/JspBoard2/writeForm.do">글쓰기</a></td>
				</tr>
			</table>
			<!-- 데이터의 유무 -->
			<c:if test="${pgList.count==0}">
				<table border="1" width="700" cellpadding="0" cellspacing="0"
					align="center">
					<tr>
						<td align="center">게시판에 저장된 글이 없습니다.</td>
					</tr>
				</table>
			</c:if>
			<c:if test="${pgList.count>0}">
				<table border="1" width="700" cellpadding="0" cellspacing="0"
					align="center">
					<tr height="30" bgcolor="#b0e0e6">
						<td align="center" width="50">번호</td>
						<td align="center" width="250">제목</td>
						<td align="center" width="100">작성자</td>
						<td align="center" width="150">작성일</td>
						<td align="center" width="50">조회수</td>
						<td align="center" width="100">IP</td>
					</tr>
					<!-- 실질적으로 레코드를 출력시켜주는 부분 -->
					<c:set var="number" value="${pgList.number}" />
					<c:forEach var="article" items="${articleList}">
						<tr height="30" onmouseover="this.style.backgroundColor='white'"
							onmouseout="this.style.backgroundColor='#e0ffff'">
							<!-- 게시물번호는 하나씩 감소하면서 출력, 이벤트를 발생시킨 객체를 구분하는 키워드는 this -->
							<td align="center" width="50"><c:out value="${number}" /> <c:set
									var="number" value="${number-1}" /></td>
							<td width="250">
								<!-- 답변글인 경우 먼저 답변이미지를 부착시키는 코드부분 --> <c:if
									test="${article.re_level>0}">
									<img src="images/level.gif" width="${7*article.re_level}"
										height="16">
									<img src="images/re.gif">
								</c:if>
								<c:if test="${article.re_level==0}">
									<img src="images/level.gif" width="${7*article.re_level}"
										height="16">
								</c:if> <!-- 글상세보기 부분  --> <a
								href="/JspBoard2/content.do?num=${article.num}&pageNum=${pgList.currentPage}">${article.subject}</a>
								<c:if test="${article.readcount>=20}">
									<img src="images/hot.gif" border="0" height="16">
							</td>
							</c:if>
							<td align="center" width="100"><a
								href="mailto:${article.email}">${article.writer}</a></td>
							<td align="center" width="150"><fmt:formatDate
									value="${article.reg_date}" timeStyle="medium"
									pattern="yy.MM.dd (hh:mm)" /></td>
							<td align="center" width="50">${article.readcount}</td>
							<td align="center" width="100">${article.ip}</td>
						</tr>
					</c:forEach>
				</table>
			</c:if>

			<c:if test="${pgList.startPage > pgList.blockSize}">
				<a
					href="/JspBoard2/list.do?pageNum=${pgList.startPage-pgList.blockSize}&search=${search}&searchtext=${searchtext}">[이전]</a>
			</c:if>
			<c:forEach var="i" begin="${pgList.startPage}"
				end="${pgList.endPage}">
				<a
					href="/JspBoard2/list.do?pageNum=${i}&search=${search}&searchtext=${searchtext}">
					<c:if test="${pgList.currentPage==i}">
						<font color="red"><b>[${i}]</b></font>
					</c:if> <c:if test="${pgList.currentPage!=i}">
						${i}
					</c:if>
				</a>
			</c:forEach>
			<c:if test="${pgList.endPage < pgList.pageCount}">
				<a href="/JspBoard2/list.do?pageNum=${pgList.startPage+pgList.blockSize}&search=${search}&searchtext=${searchtext}">[다음]</a>
			</c:if>

			<p>
				<!-- 검색어 추가(자주 검색이 되는 항목을 잘 선택) : 제목, 작성자, 제목+본문 -->
			<form name="test" action="/JspBoard2/list.do">
				<select name="search">
					<option value="subject">제목</option>
					<option value="subject_content">제목+본문</option>
					<option value="writer">작성자</option>
				</select> <input type="text" size="15" name="searchtext">&nbsp;<input
					type="submit" value="검색">
			</form>
		</center>
 --%>



		<!--  -->
            <footer class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="row">
                                <div class="col-xs-4 col-xss-12">
                                    <div class="widget">
                                        <h4 class="widget-title">Company</h4>
                                        <ul class="fa-ul">
                                            <li><a href="#"><i class="fa-li fa fa-angle-right"></i>About us</a></li>
                                            <li><a href="#"><i class="fa-li fa fa-angle-right"></i>Features</a></li>
                                            <li><a href="#"><i class="fa-li fa fa-angle-right"></i>Portfolio</a></li>
                                            <li><a href="#"><i class="fa-li fa fa-angle-right"></i>Latest News</a></li>
                                        </ul>
                                    </div><!-- End .widget -->
                                </div><!-- End .col-xs-4 -->
                                <div class="col-xs-4 col-xss-12">
                                    <div class="widget">
                                        <h4 class="widget-title">Policy</h4>
                                        <ul class="fa-ul">
                                            <li><a href="#"><i class="fa-li fa fa-angle-right"></i>Privacy</a></li>
                                            <li><a href="#"><i class="fa-li fa fa-angle-right"></i>Cookies</a></li>
                                            <li><a href="#"><i class="fa-li fa fa-angle-right"></i>Trademarks</a></li>
                                            <li><a href="#"><i class="fa-li fa fa-angle-right"></i>Terms of use</a></li>
                                        </ul>
                                    </div><!-- End .widget -->
                                </div><!-- End .col-xs-4 -->
                                <div class="col-xs-4 col-xss-12">
                                    <div class="widget">
                                        <h4 class="widget-title">Learn</h4>
                                        <ul class="fa-ul">
                                            <li><a href="#"><i class="fa-li fa fa-angle-right"></i>Order Tracking</a></li>
                                            <li><a href="#"><i class="fa-li fa fa-angle-right"></i>Locations</a></li>
                                            <li><a href="#"><i class="fa-li fa fa-angle-right"></i>Return Policy</a></li>
                                            <li><a href="#"><i class="fa-li fa fa-angle-right"></i>Sales &amp; Support</a></li>
                                        </ul>
                                    </div><!-- End .widget -->
                                </div><!-- End .col-xs-4 -->
                            </div><!-- End .row -->

                            <div class="row">
                                <div class="col-xs-4 col-xss-12">
                                    <div class="widget">
                                        <h4 class="widget-title">About</h4>
                                        <ul class="fa-ul">
                                            <li><a href="#"><i class="fa-li fa fa-angle-right"></i>Stores</a></li>
                                            <li><a href="#"><i class="fa-li fa fa-angle-right"></i>Investors</a></li>
                                            <li><a href="#"><i class="fa-li fa fa-angle-right"></i>Latest Apps</a></li>
                                            <li><a href="#"><i class="fa-li fa fa-angle-right"></i>Mobile</a></li>
                                        </ul>
                                    </div><!-- End .widget -->
                                </div><!-- End .col-xs-4 -->
                                <div class="col-xs-4 col-xss-12">
                                    <div class="widget">
                                        <h4 class="widget-title">Programs</h4>
                                        <ul class="fa-ul">
                                            <li><a href="#"><i class="fa-li fa fa-angle-right"></i>Programs</a></li>
                                            <li><a href="#"><i class="fa-li fa fa-angle-right"></i>Financing</a></li>
                                            <li><a href="#"><i class="fa-li fa fa-angle-right"></i>Order Status</a></li>
                                            <li><a href="#"><i class="fa-li fa fa-angle-right"></i>Workshops</a></li>
                                        </ul>
                                    </div><!-- End .widget -->
                                </div><!-- End .col-xs-xs4 -->
                                <div class="col-xs-4 col-xss-12">
                                    <div class="widget">
                                        <h4 class="widget-title">Useful Links</h4>
                                        <ul class="fa-ul">
                                            <li><a href="#"><i class="fa-li fa fa-angle-right"></i>Manage</a></li>
                                            <li><a href="#"><i class="fa-li fa fa-angle-right"></i>Our Partners</a></li>
                                            <li><a href="#"><i class="fa-li fa fa-angle-right"></i>Careers</a></li>
                                            <li><a href="#"><i class="fa-li fa fa-angle-right"></i>Sitemap</a></li>
                                        </ul>
                                    </div><!-- End .widget -->
                                </div><!-- End .col-xs-4 -->
                            </div><!-- End .row -->
                        </div><!-- End .col-md-8 -->
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-md-12 col-sm-6">
                                    <div class="widget about-widget">
                                        <img src="resources/assets/images/footer-logo.png" alt="Bold Logo" class="footer-logo">
                                        <p>We create themes and templates with bootstrap. We work with passion to provide you better services.</p>
                                        <ul class="about-list">
                                            <li><span>Visit Us:</span> 221B Baker St, Marylebone, London UK</li>
                                            <li><span>Call Us:</span> +1 (355) 800 08 80 - +1 (450) 900 09 90</li>
                                            <li><span>Email:</span> <a href="mailto:#">madeup@gmail.com</a></li>
                                        </ul>
                                    </div><!-- End .widget -->
                                </div><!-- End .col-md-12 -->

                                <div class="col-md-12 col-sm-6">
                                    <div class="widget newsletter-widget">
                                        <h4 class="widget-title">Subscribe</h4>
                                        <form action="#">
                                            <input type="email" class="form-control input-sm" placeholder="Join our newsletter" required>
                                            <div class="clearfix">
                                                <input type="submit" class="btn btn-sm" value="Subscribe">
                                                <p>* We won't share it with third party.</p>
                                            </div><!-- End .clearfix -->
                                        </form>
                                    </div><!-- End .widget -->
                                </div><!-- End .col-md-12 -->
                            </div><!-- End .row -->
                        </div><!-- End .col-md-4 -->
                    </div><!-- End .row -->
                </div><!-- End .container-fluid -->

                <div class="footer-bottom">
                    <div class="container-fluid">
                        <div class="footer-left">
                            <div class="social-icons">
                                <label>Find Us:</label>
                                <a href="#" class="social-icon" title="Facebook"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="social-icon" title="Twitter"><i class="fa fa-twitter"></i></a>
                                <a href="#" class="social-icon" title="Github"><i class="fa fa-github"></i></a>
                                <a href="#" class="social-icon" title="Linkedin"><i class="fa fa-linkedin"></i></a>
                                <a href="#" class="social-icon" title="Tumblr"><i class="fa fa-tumblr"></i></a>
                                <a href="#" class="social-icon" title="Flickr"><i class="fa fa-flickr"></i></a>
                                <a href="#" class="social-icon" title="Snapchat"><i class="fa fa-snapchat"></i></a>
                                <a href="#" class="social-icon" title="Vine"><i class="fa fa-vine"></i></a>
                            </div><!-- End .social-icons -->
                        </div><!-- End .footer-left -->

                        <div class="footer-right">
                            <ul class="footer-menu">
                                <li class="active"><a href="#">Home</a></li>
                                <li><a href="#">Services</a></li>
                                <li><a href="#">Features</a></li>
                                <li><a href="#">FaQS</a></li>
                                <li><a href="#">Support</a></li>
                                <li><a href="#">Contact Us</a></li>
                            </ul>
                            <p class="copyright"><strong>Bold</strong> multipurpose template - All rights reserved - 2016 &copy; Made by <a href="http://eonythemes.com" target="_blank" title="eonythemes">eonythemes</a>.</p>
                        </div><!-- End .footer-right -->
                    </div><!-- End .container-fluid -->
                </div><!-- End .footer-bottom -->
            </footer><!-- End .footer -->
        </div><!-- End #wrapper -->
        
        <a id="scroll-top" href="#top" title="Scroll top"><i class="fa fa-angle-up"></i></a>

        <!-- End -->
        <script src="resources/assets/js/plugins.min.js"></script>
        <script src="resources/assets/js/main.js"></script>

    </body>
</html>























