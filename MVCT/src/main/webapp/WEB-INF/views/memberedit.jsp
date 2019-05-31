<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>회원수정 페이지</title>
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
    </head>
    <body class="user-form-page">
        <div id="page-loader">
            <div class="sk-double-bounce">
                <div class="sk-child sk-double-bounce1"></div><!-- End .sk-child -->
                <div class="sk-child sk-double-bounce2"></div><!-- End .sk-child -->
            </div><!-- End .sk-double-bounce -->
        </div><!-- End #page-loader -->
        <jsp:include page="header.jsp"></jsp:include>
       
        <form method="post" action="memberedit.do" >
        <div id="wrapper">
            <div class="container-fluid">
                <div class="user-form-container register-form bg-white">
                    <h2 class="mb30">회원정보 수정</h2>
                        <div class="row">
                            <div class="col-sm-6 ">
                                <div class="form-group">
                                    <label>아이디</label>
                                    <input type="text" id="m_id" name="m_id" class="form-control" readonly="readonly" value="${id}" required>
                                    <input type="button" value="ID중복확인" id="idcheck"  onClick="idCheck(return validation())">
                                </div><!-- End .from-group -->
                            </div><!-- End .col-sm-6 -->
                        </div><!-- End .row -->
                        
                        <div class="row">
                            <div class="col-sm-6 ">
                                <div class="form-group">
                                    <label>비밀번호</label>
                                    <input type="password" id="m_pw" name="m_pw"class="form-control"  value="${member.m_pw}" required>
                                </div><!-- End .from-group -->
                            </div><!-- End .col-sm-6 -->
                        </div><!-- End .row -->

      <div class="row">
                            <div class="col-sm-6 ">
                                <div class="form-group">
                                    <label>이름</label>
                                    <input type="text" id="m_name"name="m_name" class="form-control" value="${member.m_name}" required>
                                </div><!-- End .from-group -->
                            </div><!-- End .col-sm-6 -->
                        </div><!-- End .row -->
                        
                        <div class="row">
                            <div class="col-sm-6 ">
                                <div class="form-group">
                                    <label>생년월일</label>
                                    <input type="text" id="m_birth"name="m_birth" class="form-control" readonly="readonly" value="${member.m_birth}" required>
                                </div><!-- End .from-group -->
                            </div><!-- End .col-sm-6 -->
                        </div><!-- End .row -->

      <div class="row">
                            <div class="col-sm-6 ">
                                <div class="form-group">
                                <label>성별</label> <br>
                                ${member.m_gender}
                                <c:if test="${member.m_gender} eq '남'">
                                    <input type="radio" value="남" id="men_check" name="m_gender" class="Gender" checked="checked" disabled> 남</c:if>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <c:if test="${member.m_gender} eq '여'">
                                    <input type="radio" value="여" id="women_check" name="m_gender" class="Gender" checked="checked" disabled> 여</c:if>
                                </div><!-- End .from-group -->
                            </div><!-- End .col-sm-6 -->
                        </div><!-- End .row -->

                        <div class="row">
                            <div class="col-sm-6 ">
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="text" id="m_email" name="m_email" class="form-control" value="${member.m_email}" required>
                                </div><!-- End .from-group -->
                            </div><!-- End .col-sm-6 -->
                        </div><!-- End .row -->
                        
                        <div class="row">
                            <div class="col-sm-6 ">
                                <div class="form-group">
                                    <label>핸드폰번호</label>
                                    <input type="text" id="m_ph"name="m_ph" class="form-control" value="${member.m_ph}" required>
                                </div><!-- End .from-group -->
                            </div><!-- End .col-sm-6 -->
                        </div><!-- End .row -->

                        <div class="row">
                            <div class="col-sm-6 ">
                                <div class="form-group">
                                    <label>주소</label>
                                    <input type="text" id="m_addr" name="m_addr" class="form-control"  value="${member.m_addr}" required>
                                </div><!-- End .from-group -->
                            </div><!-- End .col-sm-6 -->
                            <div class="col-sm-6 ">
                                <div class="form-group">
                                    <label>추가주소</label>
                                    <input type="text" class="form-control"  name="m_addr2" required>
                                </div><!-- End .from-group -->
                            </div><!-- End .col-sm-6 -->
                        </div><!-- End .row -->

                        <div class="mb10"></div><!-- space -->

         
                        <div class="form-group mb5">
                            <input type="submit" id="register"class="btn btn-custom min-width" value="수정완료">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="button" id="register"class="btn btn-custom min-width" value="돌아가기" onclick="history.back()">
                            
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
