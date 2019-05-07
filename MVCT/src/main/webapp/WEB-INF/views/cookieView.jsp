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
           <jsp:include page="header.jsp"></jsp:include>
            
            <div class="main">
                <div class="page-header largest parallax custom text-center" style="background-image:url(resources/assets/images/bisciut.png)" data-0="background-position:50% 50%;" data-top-bottom="background-position:50% 100%">
                    <div class="container-fluid">
                        <h1>Product</h1>
                        <ol class="breadcrumb">
                            <li><a href="index.html">Home</a></li>
                            <li><a href="cookie.jsp">비스켓</a></li>
                            <li class="active">상품</li>
                        </ol>
                    </div><!-- End .container-fluid -->
                </div><!-- End .page-header -->

                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-5" style="padding-right:70px">
                            <div class="product-gallery-container">
                                <div class="product-zoom-wrapper">
                                    <div class="product-zoom-container">
                                        <img id="" src="${article.c_img1 }">
                                    </div><!-- End .product-zoom-container -->
                                </div><!-- End .product-zoom-wrapper -->

<!--★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★'
                                                   작은이미지 삭제
★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
 -->



                               <%--  <div class="product-gallery-wrapper">
                                    <div class="swiper-container product-gallery">
                                        <div class="swiper-wrapper">
                                            <div class="swiper-slide">
                                                <a href="#" data-image="${article.c_img1 }" data-zoom-image="resources/assets/images/products/single/big/product1.jpg" class="product-gallery-item">
                                                    <img src="${article.c_img1 }" alt="product-small-2">
                                                </a>
                                            </div><!-- End .swiper-slide -->
                                            <div class="swiper-slide">
                                                <a href="#" data-image="${article.c_img1 }" data-zoom-image="resources/assets/images/products/single/big/product2.jpg" class="product-gallery-item">
                                                    <img src="${article.c_img1 }" alt="product-small-2">
                                                </a>
                                            </div><!-- End .swiper-slide -->
                                            <div class="swiper-slide">
                                                <a href="#" data-image="resources/assets/images/products/single/product3.jpg" data-zoom-image="resources/assets/images/products/single/big/product3.jpg" class="product-gallery-item">
                                                    <img src="resources/assets/images/products/single/thumbs/product3.jpg" alt="product-small-3">
                                                </a>
                                            </div><!-- End .swiper-slide -->
                                            <div class="swiper-slide">
                                                <a href="#" data-image="resources/assets/images/products/single/product4.jpg" data-zoom-image="resources/assets/images/products/single/big/product4.jpg" class="product-gallery-item">
                                                    <img src="resources/assets/images/products/single/thumbs/product4.jpg" alt="product-small-4">
                                                </a>
                                            </div><!-- End .swiper-slide -->
                                            <div class="swiper-slide">
                                                <a href="#" data-image="resources/assets/images/products/single/product5.jpg" data-zoom-image="resources/assets/images/products/single/big/product5.jpg" class="product-gallery-item">
                                                    <img src="resources/assets/images/products/single/thumbs/product5.jpg" alt="product-small-5">
                                                </a>
                                            </div><!-- End .swiper-slide -->
                                            <div class="swiper-slide">
                                                <a href="#" data-image="resources/assets/images/products/single/product6.jpg" data-zoom-image="resources/assets/images/products/single/big/product6.jpg" class="product-gallery-item">
                                                    <img src="resources/assets/images/products/single/thumbs/product6.jpg" alt="product-small-6">
                                                </a>
                                            </div><!-- End .swiper-slide -->
                                            <div class="swiper-slide">
                                                <a href="#" data-image="resources/assets/images/products/single/product7.jpg" data-zoom-image="resources/assets/images/products/single/big/product7.jpg" class="product-gallery-item">
                                                    <img src="resources/assets/images/products/single/thumbs/product7.jpg" alt="product-small-7">
                                                </a>
                                            </div><!-- End .swiper-slide -->
                                        </div><!-- End .swiper-wrapper -->
                                    </div><!-- End .product-gallery -->
                                </div><!-- End .product-gallery-wrapper --> --%>
                            </div><!-- End .product-gallery-container -->
                        </div><!-- End .col-md-5 -->

                        <div class="clearfix visible-sm"></div><!-- end .clearfix -->

                        <div class="col-md-7" style="padding-left:50px">
                            <div class="product-details">
                            <div class="col-md-7" style="padding-left:0">
                                <h2 class="product-title">${article.c_product}</h2>
                                </div>
                              
                                <div class="review-container col-md-5">
                                    <div class="ratings-container">
                                        <a href="#" class="product-ratings" title="4 Ratings">
                                            <span class="ratings" style="width:80%">
                                                <span class="ratings-text sr-only">4 Ratings</span>
                                            </span><!-- End .ratings -->
                                        </a><!-- End .product-ratings -->
                                    </div><!-- End .ratings-container -->
                                    <span class="review-count">4 Reviews</span>
                              <!--       <a href="#" class="review-action">Add a review</a> -->
                                </div><!-- End .review-container -->

                                <div class="product-price-container">
                                    <span class="product-price"><fmt:formatNumber value="${article.c_price}" pattern="#,###" /> 원</span>
                                </div><!-- End .product-price-container -->

                                 <div class="product-single-content">
                                    <p>상품 설명</p>
                                    <p>${article.c_intro}</p>
                                </div><!-- End .product-single-content -->

                                <div class="product-desc-box">
                                    <ul>
                                        <li><strong>종류:</strong> ${article.c_name}</li>
                                        <li><strong>용량:</strong> ${article.c_size }g</li>
                                        <li><strong>보관방식:</strong> ${article.c_storage }</li>
                                       
                                    </ul>
                                </div><!-- End .product-desc-box -->

                               



    <!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
                                    
                                                  컬러 라벨 삭제
                                    
              ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
      -->



                                <div class="row">
                                  <div class="col-xs-6">
                                   
                                        <!--   <div class="filter-color-container">
                                            <label>Select Color:</label>
                                            <div class="row">
                                                <a href="#" style="background-color:#f41d1d" class="filter-color-box"></a>
                                                <a href="#" style="background-color:#d10707" class="filter-color-box"></a>
                                                <a href="#" style="background-color:#0172b8" class="filter-color-box"></a>
                                                <a href="#" style="background-color:#2599e2" class="filter-color-box"></a>
                                                <a href="#" style="background-color:#222222" class="filter-color-box"></a>
                                            </div>End .row 
                                        </div>End .filter-color-container  -->
                                    </div><!-- End .col-xs-6 -->
                                   <!--  <div class="col-xs-6">
                                        <div class="filter-color-container">
                                            <label>Select Size:</label>
                                            <div class="row">
                                                <a href="#" class="filter-size-box">xs</a>
                                                <a href="#" class="filter-size-box">s</a>
                                                <a href="#" class="filter-size-box">m</a>
                                                <a href="#" class="filter-size-box">l</a>
                                                <a href="#" class="filter-size-box">xl</a>
                                            </div>End .row
                                        </div>End .filter-color-container
                                    </div>End .col-xs-6 -->
                                </div><!-- End .row -->
								<form action="/Project/addcartPro.do" method="post">
                                <div class="product-action">
                                    <div class="product-quantity">
                                        <input type="number" name="count" class="form-control" min="1" max="999" placeholder="1" value="1">
                                    </div><!-- end .product-quantity -->
                                    <input type="hidden" name="c_product" value=${article.c_product }>
                                    <input type="hidden" name="c_price" value=${article.c_price }>
                                    <input type="hidden" name="c_serial" value=${article.c_serial }>
                                    <input type="hidden" name="loginid" value=${id }>
                                    <button type="submit" class="btn btn-custom">Add Cart</button>
                                  <!--   <a href="#" class="btn btn-white hidden-xs">Add to Wishlist</a> -->
                                </div><!-- End .product-action -->
                                </form>
                            </div><!-- End .product-details -->
                        </div><!-- End .col-md-7 -->
                    </div><!-- End .row -->
                </div><!-- End .container-fluid -->

                <div class="container-fluid">
                    <div class="product-details-tab" role="tabpanel">
                        <!-- Nav pills -->
                        <ul class="nav nav-pills" role="tablist">
                            <li role="presentation" class="active"><a href="#product-desc" aria-controls="product-desc" role="tab" data-toggle="tab">상세설명</a></li>
<!-- 
                            <li role="presentation"><a href="#product-details" aria-controls="product-details" role="tab" data-toggle="tab">Profile</a></li>

                            <li role="presentation"><a href="#product-reviews" aria-controls="product-reviews" role="tab" data-toggle="tab">Reviews</a></li> -->
                        </ul>

                        <!-- Tab Panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="product-desc">
                                <h4 class="title custom mb20"> </h4>
                                <img src="resources/assets/images/cookie/상세설명.png" class="img-responsive pull-left" alt="오예스" style="padding-left:22%">
                               <!--  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus, veritatis magni obcaecati dignissimos pariatur eius ullam assumenda, non omnis, animi reiciendis fuga velit blanditiis quis cum? Sed tempore sit, nobis!</p>
                                <p>Sint laudantium iure earum asperiores beatae quis voluptates qui perspiciatis nisi sit dolore labore provident voluptatem odio officia, praesentium, ea optio ducimus consequuntur ut officiis! Accusantium dolor, facilis molestiae quam.</p>
                                <p>Animi nemo quisquam sequi provident consectetur cupiditate, odio eaque repudiandae iusto similique dicta ad deserunt voluptate! Placeat at provident exercitationem, numquam, magnam magni maxime tempora ipsum natus quae, odio quas poribus fugit maiores porsueas.</p>
                                <p>Nesciunt illo, odit beatae vitae voluptatum quasi doloribus placeat alias dolorem quisquam tempora tenetur, maiores quod ex consectetur hic debitis pariatur veniam. Omnis a possimus ducimus perferendis deserunt. Amet, minus. Commodi recusandae illo molestias, earum fugiat similique eaque soluta magni ipsa? Pariatur temporibus fugit maiores porro ea ducimus.</p> -->
                            </div><!-- End .tab-pane -->
                            <div role="tabpanel" class="tab-pane" id="product-details">
                                <h4 class="title custom mb20">Details</h4>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <ul class="fa-ul">
                                            <li><i class="fa-li fa fa-check"></i>Lequuntur repellat vel laborum deserunt aspernatur.</li>
                                            <li><i class="fa-li fa fa-check"></i>Lequuntur repellat vel laborum deserunt aspern umqua</li>
                                            <li><i class="fa-li fa fa-check"></i>laudantium culpa nam aperiam tempore.</li>
                                            <li><i class="fa-li fa fa-check"></i>Lequuntur repellat vel laborum deserunt aspern umqua</li>
                                            <li><i class="fa-li fa fa-check"></i>Lorem ipsum dolor sit amet, consect.</li>
                                            <li><i class="fa-li fa fa-check"></i>Lequuntur repellat vel laborum deserunt aspern umqua</li>
                                            <li><i class="fa-li fa fa-check"></i>laudantium culpa nam aperiam tempore.</li>
                                            <li><i class="fa-li fa fa-check"></i>Lequuntur repellat vel laborum deserunt aspern umqua</li>
                                            <li><i class="fa-li fa fa-check"></i>Lorem ipsum dolor sit amet, consect.</li>
                                            <li><i class="fa-li fa fa-check"></i>Lequuntur repellat vel laborum deserunt aspern umqua</li>
                                        </ul>
                                    </div><!-- End .col-sm-6 -->
                                    
                                    <div class="col-sm-6">
                                        <ul class="fa-ul">
                                            <li><i class="fa-li fa fa-check"></i>Lequuntur repellat vel laborum deserunt aspernatur.</li>
                                            <li><i class="fa-li fa fa-check"></i>Lequuntur repellat vel laborum deserunt aspern umqua</li>
                                            <li><i class="fa-li fa fa-check"></i>laudantium culpa nam aperiam tempore.</li>
                                            <li><i class="fa-li fa fa-check"></i>Lequuntur repellat vel laborum deserunt aspern umqua</li>
                                            <li><i class="fa-li fa fa-check"></i>Lorem ipsum dolor sit amet, consect.</li>
                                            <li><i class="fa-li fa fa-check"></i>Lequuntur repellat vel laborum deserunt aspern umqua</li>
                                            <li><i class="fa-li fa fa-check"></i>laudantium culpa nam aperiam tempore.</li>
                                        </ul>
                                    </div><!-- End .col-sm-6 -->
                                </div><!-- End .row -->
                            </div><!-- End .tab-pane -->
                            <div role="tabpanel" class="tab-pane" id="product-reviews">
                                <div class="comments">
                                    <h4 class="title custom mb25">Reviews (20)</h4>
                                    <ul class="comments-list media-list">
                                        <li class="media">
                                            <div class="comment">
                                                <div class="media-left">
                                                    <img class="media-object img-circle" src="resources/assets/images/blog/users/user1.jpg" alt="User name">
                                                </div><!-- End .media-left -->
                                                <div class="media-body">
                                                    <h4 class="media-heading">Steve Nash<span class="comment-date">49 min ago</span></h4>

                                                    <div class="ratings-container">
                                                        <a href="#" class="product-ratings" title="4 Ratings">
                                                            <span class="ratings" style="width:80%">
                                                                <span class="ratings-text sr-only">4 Ratings</span>
                                                            </span><!-- End .ratings -->
                                                        </a><!-- End .product-ratings -->
                                                    </div><!-- End .ratings-container -->

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

                                                            <div class="ratings-container">
                                                                <a href="#" class="product-ratings" title="5 Ratings">
                                                                    <span class="ratings" style="width:100%">
                                                                        <span class="ratings-text sr-only">5 Ratings</span>
                                                                    </span><!-- End .ratings -->
                                                                </a><!-- End .product-ratings -->
                                                            </div><!-- End .ratings-container -->

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

                                                                    <div class="ratings-container">
                                                                        <a href="#" class="product-ratings" title="3 Ratings">
                                                                            <span class="ratings" style="width:60%">
                                                                                <span class="ratings-text sr-only">3 Ratings</span>
                                                                            </span><!-- End .ratings -->
                                                                        </a><!-- End .product-ratings -->
                                                                    </div><!-- End .ratings-container -->

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

                                                    <div class="ratings-container">
                                                        <a href="#" class="product-ratings" title="4 Ratings">
                                                            <span class="ratings" style="width:80%">
                                                                <span class="ratings-text sr-only">4 Ratings</span>
                                                            </span><!-- End .ratings -->
                                                        </a><!-- End .product-ratings -->
                                                    </div><!-- End .ratings-container -->

                                                    <p>Minima quae unde quam totam enim. Corporis debitis, tenetur illo deleniti totam perferendis doloribus. Laboriosam aperiam provident debitis earum fuga quibusdam odit unde vel hic commodi dolor, minus, nobis aliquid.</p>
                                                </div><!-- End .media-body -->
                                            </div><!-- End .comment -->
                                        </li>
                                    </ul>
                                </div><!-- End .comments -->
                            </div><!-- End .tab-pane -->
                        </div><!-- End .tab-content -->
                    </div><!-- end role[tabpanel] -->
                </div><!-- End .container-fluid -->

                <div class="mb55 mb45-sm"></div><!-- margin -->

                <div class="container-fluid">
                    <h3 class="title custom text-center">관련상품</h3>
                    <div class="swiper-container related-products-carousel-fullnav">
                        <div class="swiper-buttons-container">
                            <div class="swiper-button-prev"><i class="fa fa-angle-left"></i></div><!-- End .swiper-button-prev -->
                            <div class="swiper-button-next"><i class="fa fa-angle-right"></i></div><!-- End .swiper-button-next -->
                        </div><!-- End .swiper-buttons-container -->

                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="product">
                                    <div class="product-top">
                                        <span class="label new">New</span>
                                        <figure>
                                            <a href="http://localhost:8090/Project/cookieView.do?c_serial=b_02&pageNum=" title="Product Name">
                                                <img src="resources/assets/images/cookie/biscuit_2.png" alt="오예스딸기" class="product-image">
                                                <img src="resources/assets/images/cookie/biscuit_2.png" alt="오예스딸기" class="image-hover">
                                            </a>
                                        </figure>
                                        <div class="product-action-container">
                                            <a href="#" class="btn product-add-btn" data-toggle="tooltip" title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
                                            <a href="#" class="btn product-wishlist-btn" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                            <a href="#" class="btn product-compare-btn" data-toggle="tooltip" title="Compare"><i class="fa fa-retweet"></i></a>
                                        </div><!-- End .product-action-container -->
                                    </div><!-- End .product -->
                                    <h3 class="product-title"><a href="product.html">오예스 딸기요거트</a></h3>
                                    <div class="ratings-container">
                                        <a href="#" class="product-ratings" title="3 Ratings">
                                            <span class="ratings" style="width:80%">
                                                <span class="ratings-text sr-only">3 Ratings</span>
                                            </span><!-- End .ratings -->
                                        </a><!-- End .product-ratings -->
                                    </div><!-- End .ratings-container -->
                                    <div class="product-price-container">
                                       <!--  <span class="old-price">$99.00</span> -->
                                        <span class="product-price">5,500원</span>
                                    </div><!-- End .product-price-container -->
                                </div><!-- End .product -->
                            </div><!-- End .swiper-slide -->

                            <div class="swiper-slide">
                                <div class="product">
                                    <div class="product-top">
                                    <span class="label discount">-50%</span>
                                        <figure>
                                            <a href="http://localhost:8090/Project/cookieView.do?c_serial=b_03&pageNum=" title="Product Name">
                                                <img src="resources/assets/images/cookie/biscuit_3.png" alt="Product image" class="product-image">
                                            </a>
                                        </figure>
                                        <div class="product-action-container">
                                            <a href="#" class="btn product-add-btn" data-toggle="tooltip" title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
                                            <a href="#" class="btn product-wishlist-btn" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                            <a href="#" class="btn product-compare-btn" data-toggle="tooltip" title="Compare"><i class="fa fa-retweet"></i></a>
                                        </div><!-- End .product-action-container -->
                                    </div><!-- End .product -->
                                    <h3 class="product-title"><a href="product.html">오예스 자색고구마</a></h3>
                                    <div class="ratings-container">
                                        <a href="#" class="product-ratings" title="3 Ratings">
                                            <span class="ratings" style="width:80%">
                                                <span class="ratings-text sr-only">3 Ratings</span>
                                            </span><!-- End .ratings -->
                                        </a><!-- End .product-ratings -->
                                    </div><!-- End .ratings-container -->
                                    <div class="product-price-container">
                                        <span class="old-price">8,200원</span>
                                        <span class="product-price">4,100원</span>
                                    </div><!-- End .product-price-container -->
                                </div><!-- End .product -->
                            </div><!-- End .swiper-slide -->

                            <!-- <div class="swiper-slide">
                                <div class="product">
                                    <div class="product-top">
                                        <span class="label discount">-50%</span>
                                        <figure>
                                            <a href="product.html" title="Product Name">
                                                <img src="resources/assets/images/products/product3.jpg" alt="Product image" class="product-image">
                                            </a>
                                        </figure>
                                        <div class="product-action-container">
                                            <a href="#" class="btn product-add-btn" data-toggle="tooltip" title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
                                            <a href="#" class="btn product-wishlist-btn" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                            <a href="#" class="btn product-compare-btn" data-toggle="tooltip" title="Compare"><i class="fa fa-retweet"></i></a>
                                        </div>End .product-action-container
                                    </div>End .product
                                    <h3 class="product-title"><a href="product.html">Debitis reicie ndis facili salis</a></h3>
                                    <div class="ratings-container">
                                        <a href="#" class="product-ratings" title="4 Ratings">
                                            <span class="ratings" style="width:80%">
                                                <span class="ratings-text sr-only">4 Ratings</span>
                                            </span>End .ratings
                                        </a>End .product-ratings
                                    </div>End .ratings-container
                                    <div class="product-price-container">
                                        <span class="old-price">$99.00</span>
                                        <span class="product-price">$49.00</span>
                                    </div>End .product-price-container
                                </div>End .product
                            </div>End .swiper-slide

                            <div class="swiper-slide">
                                <div class="product">
                                    <div class="product-top">
                                        <figure>
                                            <a href="product.html" title="Product Name">
                                                <img src="resources/assets/images/products/product2.jpg" alt="Product image" class="product-image">
                                                <img src="resources/assets/images/products/product2-hover.jpg" alt="Product image" class="image-hover">
                                            </a>
                                        </figure>
                                        <div class="product-action-container">
                                            <a href="#" class="btn product-add-btn" data-toggle="tooltip" title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
                                            <a href="#" class="btn product-wishlist-btn" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                            <a href="#" class="btn product-compare-btn" data-toggle="tooltip" title="Compare"><i class="fa fa-retweet"></i></a>
                                        </div>End .product-action-container
                                    </div>End .product
                                    <h3 class="product-title"><a href="product.html">Debitis reicie ndis facili salis</a></h3>
                                    <div class="ratings-container">
                                        <a href="#" class="product-ratings" title="4 Ratings">
                                            <span class="ratings" style="width:80%">
                                                <span class="ratings-text sr-only">4 Ratings</span>
                                            </span>End .ratings
                                        </a>End .product-ratings
                                    </div>End .ratings-container
                                    <div class="product-price-container">
                                        <span class="old-price">$99.00</span>
                                        <span class="product-price">$49.00</span>
                                    </div>End .product-price-container
                                </div>End .product
                            </div>End .swiper-slide

                            <div class="swiper-slide">
                                <div class="product">
                                    <div class="product-top">
                                        <span class="label new">New</span>
                                        <figure>
                                            <a href="product.html" title="Product Name">
                                                <img src="resources/assets/images/products/product6.jpg" alt="Product image" class="product-image">
                                            </a>
                                        </figure>
                                        <div class="product-action-container">
                                            <a href="#" class="btn product-add-btn" data-toggle="tooltip" title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
                                            <a href="#" class="btn product-wishlist-btn" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                            <a href="#" class="btn product-compare-btn" data-toggle="tooltip" title="Compare"><i class="fa fa-retweet"></i></a>
                                        </div>End .product-action-container
                                    </div>End .product
                                    <h3 class="product-title"><a href="product.html">Debitis reicie ndis facili salis</a></h3>
                                    <div class="ratings-container">
                                        <a href="#" class="product-ratings" title="4 Ratings">
                                            <span class="ratings" style="width:80%">
                                                <span class="ratings-text sr-only">4 Ratings</span>
                                            </span>End .ratings
                                        </a>End .product-ratings
                                    </div>End .ratings-container
                                    <div class="product-price-container">
                                        <span class="old-price">$99.00</span>
                                        <span class="product-price">$49.00</span>
                                    </div>End .product-price-container
                                </div>End .product
                            </div>End .swiper-slide

                            <div class="swiper-slide">
                                <div class="product">
                                    <div class="product-top">
                                        <figure>
                                            <a href="product.html" title="Product Name">
                                                <img src="resources/assets/images/products/product7.jpg" alt="Product image" class="product-image">
                                            </a>
                                        </figure>
                                        <div class="product-action-container">
                                            <a href="#" class="btn product-add-btn" data-toggle="tooltip" title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
                                            <a href="#" class="btn product-wishlist-btn" data-toggle="tooltip" title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                            <a href="#" class="btn product-compare-btn" data-toggle="tooltip" title="Compare"><i class="fa fa-retweet"></i></a>
                                        </div>End .product-action-container
                                    </div>End .product
                                    <h3 class="product-title"><a href="product.html">Debitis reicie ndis facili salis</a></h3>
                                    <div class="ratings-container">
                                        <a href="#" class="product-ratings" title="4 Ratings">
                                            <span class="ratings" style="width:80%">
                                                <span class="ratings-text sr-only">4 Ratings</span>
                                            </span>End .ratings
                                        </a>End .product-ratings
                                    </div>End .ratings-container
                                    <div class="product-price-container">
                                        <span class="old-price">$99.00</span>
                                        <span class="product-price">$49.00</span>
                                    </div>End .product-price-container
                                </div>End .product
                            </div>End .swiper-slide -->
                        </div><!-- End .swiper-wrapper -->
                    </div><!-- End .related-products-carousel-fullnav -->
                </div><!-- End .container-fluid -->

                <div class="mb75 mb70-sm mb60-xs"></div><!-- margin -->
            </div><!-- End .main -->

            <footer class="footer">

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
        <script src="resources/assets/js/jquery.elevateZoom.min.js"></script>
        <script src="resources/assets/js/main.js"></script>
    </body>
</html>