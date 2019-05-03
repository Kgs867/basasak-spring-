<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> --%>
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
        
        <!-- Favicon -->
        <link rel="icon" type="image/png" href="resources/assets/images/icons/favicon.png">
        <link rel="apple-touch-icon" sizes="57x57" href="resources/assets/images/icons/faviconx57.png">
        <link rel="apple-touch-icon" sizes="72x72" href="resources/assets/images/icons/faviconx72.png">

        <!-- Modernizr -->
        <script src="resources/assets/js/modernizr.js"></script>
        <script type="text/javascript"  src="http://code.jquery.com/jquery-3.3.1.min.js" ></script>
        <script src="join.js"></script>
    </head>
    <body class="user-form-page">
        <div id="page-loader">
            <div class="sk-double-bounce">
                <div class="sk-child sk-double-bounce1"></div><!-- End .sk-child -->
                <div class="sk-child sk-double-bounce2"></div><!-- End .sk-child -->
            </div><!-- End .sk-double-bounce -->
        </div><!-- End #page-loader -->
        <form method="post" action="/Project/registerPro.do" >
        <div id="wrapper">
            <div class="container-fluid">
                <div class="user-form-container register-form bg-white">
                    <h2 class="mb30">회원가입</h2>
                    <form action="#">
                        <div class="row">
                            <div class="col-sm-6 ">
                                <div class="form-group">
                                    <label>계정명</label>
                                    <input type="text" id="input_id" name="input_id" class="form-control" placeholder="계정명" required>
                                </div><!-- End .from-group -->
                            </div><!-- End .col-sm-6 -->
                        </div><!-- End .row -->
                        <div class="row">
                            <div class="col-sm-6 ">
                                <div class="form-group">
                                    <label>비밀번호</label>
                                    <input type="text" id="input_Password" name="input_Password"class="form-control" placeholder="비밀번호" required>
                                </div><!-- End .from-group -->
                            </div><!-- End .col-sm-6 -->
                            <div class="col-sm-6 ">
                                <div class="form-group">
                                    <label>비밀번호 재확인</label>
                                    <input type="text" id="input_PasswordCheck" name="input_PasswordCheck"class="form-control" placeholder="비밀번호 재확인" required>
                                </div><!-- End .from-group -->
                            </div><!-- End .col-sm-6 -->
                        </div><!-- End .row -->

                        <div class="row">
                            <div class="col-sm-6 ">
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" id="input_Email" name="input_Email" class="form-control" placeholder="Email" required>
                                </div><!-- End .from-group -->
                            </div><!-- End .col-sm-6 -->
                            <div class="col-sm-6 ">
                                <div class="form-group">
                                    <label>Email 재확인</label>
                                    <input type="email" id="input_EmailCheck" name="input_EmailCheck"class="form-control" placeholder="Email 재확인" required>
                                </div><!-- End .from-group -->
                            </div><!-- End .col-sm-6 -->
                        </div><!-- End .row -->
                        
                        <div class="row">
                            <div class="col-sm-6 ">
                                <div class="form-group">
                                    <label>핸드폰번호</label>
                                    <input type="text" id="input_Mobile"name="input_Mobile" class="form-control" placeholder="핸드폰 번호" required>
                                </div><!-- End .from-group -->
                            </div><!-- End .col-sm-6 -->
                        </div><!-- End .row -->

                        <div class="row">
                            <div class="col-sm-6 ">
                                <div class="form-group">
                                    <label>주소</label>
                                    <input type="text" id="input_address" name="input_address" class="form-control" placeholder="도로명주소">
                                </div><!-- End .from-group -->
                            </div><!-- End .col-sm-6 -->
                            <div class="col-sm-6 ">
                                <div class="form-group">
                                    <label>추가주소</label>
                                    <input type="text" class="form-control" placeholder="추가주소">
                                </div><!-- End .from-group -->
                            </div><!-- End .col-sm-6 -->
                        </div><!-- End .row -->

                        <div class="mb10"></div><!-- space -->

                        <div class="form-group mb0">
                            <div class="checkbox">
                              <label class="custom-checkbox-wrapper">
                                <span class="custom-checkbox-container">
                                    <input type="checkbox" value="true">
                                    <span class="custom-checkbox-icon"></span>
                                </span>
                               <span>나는 모든 <a href="#">이용약관</a>을 읽었습니다</span>
                              </label>
                            </div><!-- End .checkbox -->
                        </div><!-- End .form-group -->

                        <div class="form-group mb25">
                            <div class="checkbox">
                              <label class="custom-checkbox-wrapper">
                                <span class="custom-checkbox-container">
                                    <input type="checkbox" value="true">
                                    <span class="custom-checkbox-icon"></span>
                                </span>
                               <span>소식을 정기적으로 받겠습니다</span>
                              </label>
                            </div><!-- End .checkbox -->
                        </div><!-- End .form-group -->

                        <div class="form-group mb5">
                            <input type="submit" id="register"class="btn btn-custom min-width" value="회원가입">
                        </div><!-- End .from-group -->
                    </form>
                </div><!-- End .register-form-container -->
            </div><!-- End .container-fluid -->
        </div><!-- End #wrapper -->
        <a id="scroll-top" href="#top" title="Scroll top"><i class="fa fa-angle-up"></i></a>
		</form>
        <!-- End -->
        <script src="resources/assets/js/plugins.min.js"></script>
        <script src="resources/assets/js/main.js"></script>
    </body>
</html>