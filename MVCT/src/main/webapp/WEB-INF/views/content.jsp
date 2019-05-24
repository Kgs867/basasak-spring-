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
<link rel="stylesheet" href="resources/assets/css/style.css">
<!-- basasak css 추가 -->
<link rel="stylesheet" href="resources/assets/css/basasak.css">

<!-- Favicon -->
<link rel="icon" type="image/png"
	href="resources/assets/images/icons/favicon.png">
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
		<c:import url="header.jsp"></c:import>


		<div class="main">
			<div class="page-header largest parallax custom text-center"
				style="background-image: url(resources/assets/images/bisciut.png)"
				data-0="background-position:50% 50%;"
				data-top-bottom="background-position:50% 100%">
				<div class="container-fluid">
					<h1>
						리뷰게시판 <small></small>
					</h1>
					<ol class="breadcrumb">
						<li><a href="index.html">Home</a></li>
						<li><a href="#">Pages</a></li>
						<li class="active">Tables</li>
					</ol>
				</div>
				<!-- End .container -->
			</div>
			<!-- End .page-header -->











			<div class="mb80"></div>
			<!-- margin -->
			<div class="container-fluid">
				<article class="entry">
					<!-- <div class="entry-media">
                            <figure>
                                <img src="resources/assets/images/blog/post1.jpg" alt="entry image">
                            </figure>
                        </div>End .enty-media

                        <div class="entry-icon">
                            <i class="fa fa-file-image-o"></i>
                        </div>End .entry-icon -->


					<div class="entry-content-container">
						<div class="entry-meta">
							<div>
								<i class="fa fa-calendar"></i>${article.r_date}</div>
							<div>
								<a href="#" id="r_num"><i class="fa fa-comments"></i>${article.r_num}</a>
							</div>
							<div>
								<a href="#"><i class="fa fa-eye"></i>${article.r_view}</a>
							</div>
							<div>
								<a href="#"><i class="fa fa-user"></i> ${article.m_id}</a>
							</div>
						</div>
						<!-- End .entry-meta -->

						<div class="entry-content-wrapper">
							<h2 class="entry-title">${article.r_title}</h2>
							<div class="entry-content">
								<p>${article.r_content}</p>
							</div>
							<!-- End .entry-content -->
						</div>
						<!-- End .entry-content-wrapper -->
						<input type="button" value="추천" id="recommend"><input
							type="button" name="r_recommend" id="r_recommend">
						&nbsp;&nbsp;&nbsp;&nbsp; <input type="button" value="글수정"
							onclick="document.location.href='updateForm.do?r_num=${article.r_num}&pageNum=${pageNum}'">
						&nbsp;&nbsp;&nbsp;&nbsp; <input type="button" value="글삭제"
							onclick="document.location.href='deleteForm.do?r_num=${article.r_num}&pageNum=${pageNum}'">
						&nbsp;&nbsp;&nbsp;&nbsp; <input type="button" value="글목록"
							onclick="document.location.href='review.do?pageNum=${pageNum}'">
					</div>
					<!-- End .entry-content-container -->




					<%--  <div class="entry-author">
                            <figure>
                                <img src="resources/assets/images/blog/users/author.jpg" alt="Author" class="img-responsive img-circle">
                            </figure>
                            <div class="author-content">
                                <h4><a href="#">Justin Gadget</a></h4>
                                <p>Perspiciatis accusantium laudantium deserunt ad vel sit ipsam consequuntur tenetur similique, recusandae esse a enim, quibusdam ullam.</p>
                                <div class="social-icons">
                                	<input type="button" value="글수정" 
       onclick="document.location.href='/Project/updateForm.do?r_num=${article.r_num}&pageNum=${pageNum}'">
	   &nbsp;&nbsp;&nbsp;&nbsp;
	  <input type="button" value="글삭제" 
       onclick="document.location.href='/Project/deleteForm.do?r_num=${article.r_num}&pageNum=${pageNum}'">
	   &nbsp;&nbsp;&nbsp;&nbsp; 
       <input type="button" value="글목록" 
       onclick="document.location.href='/Project/review.do?pageNum=${pageNum}'">
                                    <!-- <a href="#" class="social-icon" title="Facebook"><i class="fa fa-facebook"></i></a>
                                    <a href="#" class="social-icon" title="Twitter"><i class="fa fa-twitter"></i></a>
                                    <a href="#" class="social-icon" title="Github"><i class="fa fa-github"></i></a>
                                    <a href="#" class="social-icon" title="Linkedin"><i class="fa fa-linkedin"></i></a>
                                    <a href="#" class="social-icon" title="Tumblr"><i class="fa fa-tumblr"></i></a>
                                    <a href="#" class="social-icon" title="Flickr"><i class="fa fa-flickr"></i></a> -->
                                </div><!-- End .social-icons -->
                            </div><!-- end .author-content -->
                        </div><!-- End .entry-author --> --%>
				</article>

				<%--<div class="single-related-posts">
                        <h3 class="title custom mb25">Related Posts</h3>

                        <div class="swiper-container related-posts-carousel">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <article class="entry entry-grid">
                                        <div class="entry-media">
                                            <figure>
                                                <a href="single.html"><img src="resources/assets/images/blog/post1.jpg" alt="Post image"></a>
                                            </figure>
                                        </div><!-- End .entry-media -->

                                        <div class="entry-icon">
                                            <i class="fa fa-file-image-o"></i>
                                        </div><!-- End .entry-icon -->

                                        <div class="entry-content-container">
                                            <div class="entry-meta">
                                                <div><i class="fa fa-calendar"></i>17 Aug 2016</div>
                                                <div><a href="#"><i class="fa fa-comments"></i>8 Comment(s)</a></div>
                                                <div><a href="#"><i class="fa fa-user"></i> Admin</a></div>
                                            </div><!-- End .entry-meta -->
                                            
                                            <div class="entry-content-wrapper">
                                                <h2 class="entry-title"><a href="single.html">Lorem ipsum dolor sit amet, consectetur adipising elit numquam nesciun.</a></h2>
                                                <div class="entry-content">
                                                    <p>Molestiae neque doloremque, voluptatum nostrum praesentium esse fugiat. Deserunt praesentium architecto expedita soluta deleniti est error.</p>
                                                    <a href="#" class="readmore">Read more<i class="fa fa-angle-right"></i></a>
                                                </div><!-- End .entry-content -->
                                            </div><!-- End .entry-content-wrapper -->
                                        </div><!-- End .entry-content-container -->
                                    </article>
                                </div><!-- End .swiper-slide -->

                                <div class="swiper-slide">
                                    <article class="entry entry-grid">
                                        <div class="entry-media">
                                            <figure>
                                                <a href="single.html"><img src="resources/assets/images/blog/post2.jpg" alt="Post image"></a>
                                            </figure>
                                        </div><!-- End .entry-media -->

                                        <div class="entry-icon">
                                            <i class="fa fa-file-image-o"></i>
                                        </div><!-- End .entry-icon -->

                                        <div class="entry-content-container">
                                            <div class="entry-meta">
                                                <div><i class="fa fa-calendar"></i>17 Aug 2016</div>
                                                <div><a href="#"><i class="fa fa-comments"></i>8 Comment(s)</a></div>
                                                <div><a href="#"><i class="fa fa-user"></i> Admin</a></div>
                                            </div><!-- End .entry-meta -->
                                            
                                            <div class="entry-content-wrapper">
                                                <h2 class="entry-title"><a href="single.html">Lorem ipsum dolor sit amet, consectetur adipising elit numquam nesciun.</a></h2>
                                                <div class="entry-content">
                                                    <p>Molestiae neque doloremque, voluptatum nostrum praesentium esse fugiat. Deserunt praesentium architecto expedita soluta deleniti est error.</p>
                                                    <a href="#" class="readmore">Read more<i class="fa fa-angle-right"></i></a>
                                                </div><!-- End .entry-content -->
                                            </div><!-- End .entry-content-wrapper -->
                                        </div><!-- End .entry-content-container -->
                                    </article>
                                </div><!-- End .swiper-slide -->

                                <div class="swiper-slide">
                                    <article class="entry entry-grid">
                                        <div class="entry-media">
                                            <figure>
                                                <a href="single.html"><img src="resources/assets/images/blog/post3.jpg" alt="Post image"></a>
                                            </figure>
                                        </div><!-- End .entry-media -->

                                        <div class="entry-icon">
                                            <i class="fa fa-file-image-o"></i>
                                        </div><!-- End .entry-icon -->

                                        <div class="entry-content-container">
                                            <div class="entry-meta">
                                                <div><i class="fa fa-calendar"></i>17 Aug 2016</div>
                                                <div><a href="#"><i class="fa fa-comments"></i>8 Comment(s)</a></div>
                                                <div><a href="#"><i class="fa fa-user"></i> Admin</a></div>
                                            </div><!-- End .entry-meta -->
                                            
                                            <div class="entry-content-wrapper">
                                                <h2 class="entry-title"><a href="single.html">Lorem ipsum dolor sit amet, consectetur adipising elit numquam nesciun.</a></h2>
                                                <div class="entry-content">
                                                    <p>Molestiae neque doloremque, voluptatum nostrum praesentium esse fugiat. Deserunt praesentium architecto expedita soluta deleniti est error.</p>
                                                    <a href="#" class="readmore">Read more<i class="fa fa-angle-right"></i></a>
                                                </div><!-- End .entry-content -->
                                            </div><!-- End .entry-content-wrapper -->
                                        </div><!-- End .entry-content-container -->
                                    </article>
                                </div><!-- End .swiper-slide -->

                                <div class="swiper-slide">
                                    <article class="entry entry-grid">
                                        <div class="entry-media">
                                            <figure>
                                                <a href="single.html"><img src="resources/assets/images/blog/post4.jpg" alt="Post image"></a>
                                            </figure>
                                        </div><!-- End .entry-media -->

                                        <div class="entry-icon">
                                            <i class="fa fa-file-image-o"></i>
                                        </div><!-- End .entry-icon -->

                                        <div class="entry-content-container">
                                            <div class="entry-meta">
                                                <div><i class="fa fa-calendar"></i>17 Aug 2016</div>
                                                <div><a href="#"><i class="fa fa-comments"></i>8 Comment(s)</a></div>
                                                <div><a href="#"><i class="fa fa-user"></i> Admin</a></div>
                                            </div><!-- End .entry-meta -->
                                            
                                            <div class="entry-content-wrapper">
                                                <h2 class="entry-title"><a href="single.html">Lorem ipsum dolor sit amet, consectetur adipising elit numquam nesciun.</a></h2>
                                                <div class="entry-content">
                                                    <p>Molestiae neque doloremque, voluptatum nostrum praesentium esse fugiat. Deserunt praesentium architecto expedita soluta deleniti est error.</p>
                                                    <a href="#" class="readmore">Read more<i class="fa fa-angle-right"></i></a>
                                                </div><!-- End .entry-content -->
                                            </div><!-- End .entry-content-wrapper -->
                                        </div><!-- End .entry-content-container -->
                                    </article>
                                </div><!-- End .swiper-slide -->
                            </div><!-- End .swiper-wrapper -->

                            <div class="swiper-pagination"></div><!-- End .swiper-pagination -->
                        </div><!-- End .related-posts-carousel -->
                    </div><!-- End .single-related-posts -->

                    <div class="comments">
                        <h3 class="title custom mb25">Commnets (20)</h3>
                        <ul class="comments-list media-list">
                            <li class="media">
                                <div class="comment">
                                    <div class="media-left">
                                        <img class="media-object img-circle" src="resources/assets/images/blog/users/user1.jpg" alt="User name">
                                    </div><!-- End .media-left -->
                                    <div class="media-body">
                                        <h4 class="media-heading">Steve Nash<span class="comment-date">49 min ago</span></h4>

                                        <p>Enim ad sapiente itaque illo laudantium tempore rem iure accusantium atque. Qui facilis quibusdam laborum. Nobis animi provident ipsum quidem eveniet voluptate expedita veniam porro quod a. Temporibus, voluptates provident.Ex deserunt error, culpa voluptatibus.</p>
                                    </div><!-- End .media-body -->
                                </div><!-- End .comment -->
                                <ul>
                                    <li class="media">
                                        <div class="comment">
                                            <div class="media-left">
                                                <img class="media-object img-circle" src="resources/assets/images/blog/users/user2.jpg" alt="User name">
                                            </div><!-- End .media-left -->
                                            <div class="media-body">
                                                <h4 class="media-heading">Desmond Mason<span class="comment-date">32 min ago</span></h4>

                                                <p>Ex deserunt error, culpa voluptatibus, explicabo commodi id fugiat ipsa. Doloremque ipsum sapiente laudantium similique repellat, tempora voluptatem. Sunt tempore eligendi inventore molestiae delectus harum quasi consequuntur nisi repellendus saepe?</p>
                                            </div><!-- End .media-body -->
                                        </div><!-- End .comment -->
                                        <ul>
                                            <li class="media">
                                                <div class="comment">
                                                    <div class="media-left">
                                                        <img class="media-object img-circle" src="resources/assets/images/blog/users/user3.jpg" alt="User name">
                                                    </div><!-- End .media-left -->
                                                    <div class="media-body">
                                                        <h4 class="media-heading">Ben Wallece<span class="comment-date">21 min ago</span></h4>

                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur, iure. Minima alias nam magni distinctio voluptatum dolorum nostrum, iusto magnam ullam iure pariatur, qui dolore maiores iste, unde vitae. Dolores.</p>
                                                    </div><!-- End .media-body -->
                                                </div><!-- End .comment -->
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="media">
                                <div class="comment">
                                    <div class="media-left">
                                        <img class="media-object img-circle" src="resources/assets/images/blog/users/user4.jpg" alt="User name">
                                    </div><!-- End .media-left -->
                                    <div class="media-body">
                                        <h4 class="media-heading">Steve Kerr<span class="comment-date">2 hours ago</span></h4>

                                        <p>Minima quae unde quam totam enim. Corporis debitis, tenetur illo deleniti totam perferendis doloribus. Laboriosam aperiam provident debitis earum fuga quibusdam odit unde vel hic commodi dolor, minus, nobis aliquid.</p>
                                    </div><!-- End .media-body -->
                                </div><!-- End .comment -->
                            </li>
                        </ul>
                    </div><!-- End .comments -->

                    <div id="respond" class="comment-respond">
                        <h3 class="title custom mb25">Send a Reply</h3>
                        <form action="#" method="post">
                            <div class="row">
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" placeholder="Name" required>
                                </div><!-- End .col-sm-6 -->
                                <div class="col-sm-6">
                                    <input type="email" class="form-control" placeholder="Email" required>
                                </div><!-- End .col-sm-6 -->
                            </div><!-- End .row -->
                            <input type="url" class="form-control" placeholder="Website" required>
                            <textarea class="form-control" rows="6" placeholder="Add Your Comment" required></textarea>
                            <input type="submit" class="btn btn-custom min-width" value="Send Reply">
                        </form>
                    </div><!-- End #respond -->--%>



			</div>
			<!-- End .container-fluid -->
		</div>
		<!-- End .main -->








		<footer class="footer">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-8">
						<div class="row">
							<div class="col-xs-4 col-xss-12">
								<div class="widget">
									<h4 class="widget-title">Company</h4>
									<ul class="fa-ul">
										<li><a href="#"><i class="fa-li fa fa-angle-right"></i>About
												us</a></li>
										<li><a href="#"><i class="fa-li fa fa-angle-right"></i>Features</a></li>
										<li><a href="#"><i class="fa-li fa fa-angle-right"></i>Portfolio</a></li>
										<li><a href="#"><i class="fa-li fa fa-angle-right"></i>Latest
												News</a></li>
									</ul>
								</div>
								<!-- End .widget -->
							</div>
							<!-- End .col-xs-4 -->
							<div class="col-xs-4 col-xss-12">
								<div class="widget">
									<h4 class="widget-title">Policy</h4>
									<ul class="fa-ul">
										<li><a href="#"><i class="fa-li fa fa-angle-right"></i>Privacy</a></li>
										<li><a href="#"><i class="fa-li fa fa-angle-right"></i>Cookies</a></li>
										<li><a href="#"><i class="fa-li fa fa-angle-right"></i>Trademarks</a></li>
										<li><a href="#"><i class="fa-li fa fa-angle-right"></i>Terms
												of use</a></li>
									</ul>
								</div>
								<!-- End .widget -->
							</div>
							<!-- End .col-xs-4 -->
							<div class="col-xs-4 col-xss-12">
								<div class="widget">
									<h4 class="widget-title">Learn</h4>
									<ul class="fa-ul">
										<li><a href="#"><i class="fa-li fa fa-angle-right"></i>Order
												Tracking</a></li>
										<li><a href="#"><i class="fa-li fa fa-angle-right"></i>Locations</a></li>
										<li><a href="#"><i class="fa-li fa fa-angle-right"></i>Return
												Policy</a></li>
										<li><a href="#"><i class="fa-li fa fa-angle-right"></i>Sales
												&amp; Support</a></li>
									</ul>
								</div>
								<!-- End .widget -->
							</div>
							<!-- End .col-xs-4 -->
						</div>
						<!-- End .row -->

						<div class="row">
							<div class="col-xs-4 col-xss-12">
								<div class="widget">
									<h4 class="widget-title">About</h4>
									<ul class="fa-ul">
										<li><a href="#"><i class="fa-li fa fa-angle-right"></i>Stores</a></li>
										<li><a href="#"><i class="fa-li fa fa-angle-right"></i>Investors</a></li>
										<li><a href="#"><i class="fa-li fa fa-angle-right"></i>Latest
												Apps</a></li>
										<li><a href="#"><i class="fa-li fa fa-angle-right"></i>Mobile</a></li>
									</ul>
								</div>
								<!-- End .widget -->
							</div>
							<!-- End .col-xs-4 -->
							<div class="col-xs-4 col-xss-12">
								<div class="widget">
									<h4 class="widget-title">Programs</h4>
									<ul class="fa-ul">
										<li><a href="#"><i class="fa-li fa fa-angle-right"></i>Programs</a></li>
										<li><a href="#"><i class="fa-li fa fa-angle-right"></i>Financing</a></li>
										<li><a href="#"><i class="fa-li fa fa-angle-right"></i>Order
												Status</a></li>
										<li><a href="#"><i class="fa-li fa fa-angle-right"></i>Workshops</a></li>
									</ul>
								</div>
								<!-- End .widget -->
							</div>
							<!-- End .col-xs-xs4 -->
							<div class="col-xs-4 col-xss-12">
								<div class="widget">
									<h4 class="widget-title">Useful Links</h4>
									<ul class="fa-ul">
										<li><a href="#"><i class="fa-li fa fa-angle-right"></i>Manage</a></li>
										<li><a href="#"><i class="fa-li fa fa-angle-right"></i>Our
												Partners</a></li>
										<li><a href="#"><i class="fa-li fa fa-angle-right"></i>Careers</a></li>
										<li><a href="#"><i class="fa-li fa fa-angle-right"></i>Sitemap</a></li>
									</ul>
								</div>
								<!-- End .widget -->
							</div>
							<!-- End .col-xs-4 -->
						</div>
						<!-- End .row -->
					</div>
					<!-- End .col-md-8 -->
					<div class="col-md-4">
						<div class="row">
							<div class="col-md-12 col-sm-6">
								<div class="widget about-widget">
									<img src="resources/assets/images/footer-logo.png"
										alt="Bold Logo" class="footer-logo">
									<p>We create themes and templates with bootstrap. We work
										with passion to provide you better services.</p>
									<ul class="about-list">
										<li><span>Visit Us:</span> 221B Baker St, Marylebone,
											London UK</li>
										<li><span>Call Us:</span> +1 (355) 800 08 80 - +1 (450)
											900 09 90</li>
										<li><span>Email:</span> <a href="mailto:#">madeup@gmail.com</a></li>
									</ul>
								</div>
								<!-- End .widget -->
							</div>
							<!-- End .col-md-12 -->

							<div class="col-md-12 col-sm-6">
								<div class="widget newsletter-widget">
									<h4 class="widget-title">Subscribe</h4>
									<form action="#">
										<input type="email" class="form-control input-sm"
											placeholder="Join our newsletter" required>
										<div class="clearfix">
											<input type="submit" class="btn btn-sm" value="Subscribe">
											<p>* We won't share it with third party.</p>
										</div>
										<!-- End .clearfix -->
									</form>
								</div>
								<!-- End .widget -->
							</div>
							<!-- End .col-md-12 -->
						</div>
						<!-- End .row -->
					</div>
					<!-- End .col-md-4 -->
				</div>
				<!-- End .row -->
			</div>
			<!-- End .container-fluid -->

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
	<script src="resources/assets/js/twitter/jquery.tweet.min.js"></script>
	<script src="resources/assets/js/main.js"></script>
	<script src="resources/assets/js/review_recommend.js"></script>

	
</body>
</html>