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

				<center>
					<b>글삭제</b> <br>
					<form method="POST" name="delForm" action="deletePro.do"
						onsubmit="return deleteSave()">
						<table border="1" align="center" cellspacing="0" cellpadding="0"
							width="360">
							<tr height="30">
								<td align=center bgcolor="yellow"><b>비밀번호를 입력해주세요.</b></td>
							</tr>
							<tr height="30">
								<td align=center>비밀번호 : <input type="password" name="r_pw"
									size="8" maxlength="12"> <input type="hidden"
									name="r_num" value="${article.r_num }"> <input
									type="hidden" name="pageNum" value="${pageNum}">
								</td>
							</tr>
							<tr height="30">
								<td align=center bgcolor="yellow"><input type="submit"
									value="글삭제"> <input type="button" value="글목록"
									onclick="document.location.href='review.do?pageNum=${pageNum}'">
								</td>
							</tr>
						</table>
					</form>
				</center>
			</div><!-- End .container -->
                <div class="mb80"></div><!-- margin -->
            </div><!-- End .main -->

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