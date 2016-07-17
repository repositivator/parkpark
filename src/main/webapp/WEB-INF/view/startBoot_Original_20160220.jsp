<%@page import="org.hibernate.validator.internal.util.privilegedactions.GetAnnotationParameter"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <title>주차팍팍 - 주차, 이제 팍!팍! 빠르게 해버리자</title>

    <link rel="shortcut icon" href="<%=request.getContextPath() %>/bootstrap/assets/img/favicon.png" />

    <meta name="description" content="">

    <!-- CSS -->
    <link href="<%=request.getContextPath() %>/bootstrap/assets/css/preload.css" rel="stylesheet">
     
    <!-- Compiled in vendors.js -->
    <!--
    <link href="<%=request.getContextPath() %>/bootstrap/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/bootstrap/assets/css/bootstrap-switch.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/bootstrap/assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/bootstrap/assets/css/animate.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/bootstrap/assets/css/slidebars.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/bootstrap/assets/css/lightbox.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/bootstrap/assets/css/jquery.bxslider.css" rel="stylesheet" />
    <link href="<%=request.getContextPath() %>/bootstrap/assets/css/buttons.css" rel="stylesheet">
    -->

    <link href="<%=request.getContextPath() %>/bootstrap/assets/css/vendors.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/bootstrap/assets/css/syntaxhighlighter/shCore.css" rel="stylesheet" >

    <link href="<%=request.getContextPath() %>/bootstrap/assets/css/style-blue5.css" rel="stylesheet" title="default">
    <link href="<%=request.getContextPath() %>/bootstrap/assets/css/width-full.css" rel="stylesheet" title="default">

    
    <!-- Custom Fonts -->
    <link href="<%=request.getContextPath() %>/bootstrap/assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <!-- Font -->
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css">


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
        <script src="<%=request.getContextPath() %>/bootstrap/assets/js/html5shiv.min.js"></script>
        <script src="<%=request.getContextPath() %>/bootstrap/assets/js/respond.min.js"></script>
    <![endif]-->
    
    <!-- jquery -->
    <script type="text/javascript" src="${path}/resources/js/jquery-1.12.0.min.js"></script>
    
    <!-- 시작화면용 -->
    <script src="${path}/resources/js/index.js"></script>
    
    <!-- 로그인용 -->
    <script src="${path}/resources/js/login.js"></script>
    
    <!-- 회원가입용 -->
    <script src="${path}/resources/js/membership.js"></script>
    <link href="${path}/resources/css/membership.css" rel="stylesheet" type="text/css">
<%--     <!-- 지도검색용 -->
    <script src="${path}/resources/js/parkinglot_map.js" type="text/javascript"></script> --%>
	<!-- 예약용 -->
	 <script src="${path}/resources/js/reservation.js"></script>
</head>


<!-- Preloader -->
<div id="preloader">
    <div id="status">&nbsp;</div>
</div>

<body>
<!-- Login session check -->
<%
String emailsession = (String)session.getAttribute("emailKey"); 
String code = (String) session.getAttribute("codeKey");
String point = (String)session.getAttribute("m_point"); 
String login = "";  		//로그인 or 로그아웃
String member = ""; 		//회원가입 or 회원아이디
String myPage = "";     	//마이페이지



/* if(emailsession!=null){
	login = "<a href='member/logout' style='margin-left: -21px; margin-right: -21px; padding-right: 16px;'><i class='fa fa-sign-in'></i> 로그아웃 </a>";
	//member = "<a href='#' class='dropdown-toggle' data-toggle='dropdown' style='margin-right: -22px;'><i class='fa fa-user-plus'></i> 회원가입 </a>";
	myPage = "<li><a href='index.html' style='font-family: Montserrat,sans-serif;font-size: 17px;'>회원정보 확인</a></li>";
	myPage += "<li><a href='parkinglot/myParkingList' style='font-family: Montserrat,sans-serif;font-size: 17px;'>내 주차장</a></li>";
	myPage += "<li><a href='page_about3.html' style='font-family: Montserrat,sans-serif;font-size: 17px;'>내 주차장 예약</a></li>";
	myPage += "<li><a href='member/logout' style='font-family: Montserrat,sans-serif;font-size: 17px;'><i class= 'fa fa-sign-out'></i> &nbsp; 로그아웃</a></li>";
}else{
	login = "<a href='#' class='dropdown-toggle' data-toggle='dropdown' style='margin-left: -21px; margin-right: -21px; padding-right: 16px;'><i class='fa fa-sign-in'></i>로그인 </a>";
	member = "<a href='#' class='dropdown-toggle' data-toggle='dropdown' style='margin-right: -22px;'><i class='fa fa-user-plus'></i> 회원가입 </a>";
	myPage = "<li><a href='#' style='font-family: Montserrat,sans-serif;font-size: 17px;'><i class= 'fa fa-sign-out'></i> &nbsp; 로그인</a></li>";
	
} */

if(emailsession!=null){
	login = "<a href='member/logout' style='margin-left: -21px;margin-right: -44px;padding-left: 30px;padding-right: 16px;width: 140px;height: 35px;'><i class='fa fa-sign-in'></i> &nbsp; 로그아웃 </a>";
	//member = "<a href='#' class='dropdown-toggle' data-toggle='dropdown' style='margin-right: -22px;'><i class='fa fa-user-plus'></i> 회원가입 </a>";
	//myPage = "<li><a href='index.html' style='font-family: Montserrat,sans-serif;font-size: 17px;'><i class='fa fa-cogs'></i> &nbsp;개인정보 수정</a></li>";
	myPage ="<li><a href='#' id='modify' data-toggle='modal' data-target='#pwdModal' style='font-family: Montserrat,sans-serif;font-size: 17px;'><i class='fa fa-cogs'></i> &nbsp;개인정보 수정 </a></li>";
	myPage += "<li><a href='parkinglot/myParkingList' style='font-family: Montserrat,sans-serif;font-size: 17px;'><i class='fa fa-wrench'></i> &nbsp;내 주차장 관리</a></li>";
	myPage += "<form name='reserForm' action='member/myReservation'><input type='hidden' name='code' value='"+code+"'><li><a href='#' onclick='test("+code+")' style='font-family: Montserrat,sans-serif;font-size: 17px;'><i class='fa fa-check-square-o'></i> &nbsp;내 주차장 예약</a></li></form>";
	myPage += "<li><a href='member/logout' style='font-family: Montserrat,sans-serif;font-size: 17px;'><i class= 'fa fa-sign-out'></i> &nbsp; 로그아웃</a></li>";
	myPage += "<li><a href='blog.html' style='font-family: Montserrat,sans-serif;font-size: 17px;'><i class= 'fa fa-quote-right'></i> &nbsp; 1:1 문의</a></li>";
	myPage += "<li><a href='#' style='font-family: Montserrat,sans-serif;font-size: 17px;color: #38d3ff;'><i class= 'fa fa-gift'></i> &nbsp; 현재 적립금 : "+ point +" point</a></li>";
	
}else{
	login = "<a href='#' class='dropdown-toggle' data-toggle='dropdown' style='margin-left: -21px; margin-right: -21px;padding-right: 20px;padding-left: 18px;margin-top: -2px;padding-bottom: 29px;height: 35px;'><i class='fa fa-sign-in'></i>&nbsp; 로그인 </a>";
	member = "<a href='#' class='dropdown-toggle' data-toggle='dropdown' style='margin-right: -22px; margin-right: -21px;padding-right: 20px;padding-left: 18px;margin-top: -2px;padding-bottom: 29px;height: 35px;'><i class='fa fa-user-plus'></i> &nbsp; 회원가입 </a>";
	
	myPage = "<li><h2 class='slidebar-header' style='font-family: Montserrat,Helvetica,Arial,sans-serif; font-size: 20px; padding-bottom: 23px;border-bottom: solid 1px #38D3FF;border-top: solid 1px #38D3FF;margin-top: -1px;padding-bottom: 80px;''> <i class= 'fa fa-sign-in'></i> &nbsp; 로그인을 해주세요! </h2></li>";
	myPage += "<li><p style='font-family: Montserrat,sans-serif;font-size: 17px;margin-top: -85px;margin-left: 20px;padding-bottom: 10px;border-bottom: 0px;border-top: 0px;'>즉시 사용 가능한 </p></li>";
	myPage += "<li><p style='font-family: Montserrat,sans-serif;font-size: 17px;margin-left: 20px;margin-top: -29px;padding-top: 10px;border-bottom: 0px; border-top: 0px;'>적립금 5,000 point를 드립니다! </p></li>";
}
%>



<div id="sb-site">
<div class="boxed">

<header id="header-full-top" class="hidden-xs header-full">
    <div class="container">
        <div class="header-full-title" style="width: 430px;">
        
        
        	<!-- 상단 로고 및 문구 -->
        	<a href="/boots_parkpark/index.jsp"><img class="animated fadeInRight" src="<%=request.getContextPath() %>/bootstrap/assets/img/logo_blue_parkpark.png" style="width: 200px; float:left;"></a>
        	<!-- <h1 class="animated fadeInRight" ><a href="index.html">PARK &nbsp; <span>PARK</span></a></h1> -->	
            <a href="/boots_parkpark/index.jsp" style="text-decoration: none;">
            	<p class="animated fadeInRight" style = "font-family: Montserrat,Helvetica,Arial,sans-serif; margin-left: 210px; margin-top: 13px; color: rgba(68, 68, 68, 0.63); position: relative; text-align: left; ">
            	한 방에 해결하는 주차! <br> 내 손 안의 주차장 주차팍팍!</p>
            </a>
        </div>
        <nav class="top-nav">
            <ul class="top-nav-social hidden-sm">
                <li><a href="#" class="animated fadeIn animation-delay-7 twitter"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#" class="animated fadeIn animation-delay-8 facebook"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#" class="animated fadeIn animation-delay-9 google-plus"><i class="fa fa-google-plus"></i></a></li>
                <li><a href="#" class="animated fadeIn animation-delay-8 instagram"><i class="fa fa-instagram"></i></a></li>
                <li><a href="#" class="animated fadeIn animation-delay-7 linkedin"><i class="fa fa-linkedin"></i></a></li>
            </ul>

			<!-- 로그인/로그아웃 -->
            <div class="dropdown animated fadeInDown animation-delay-11">
                
                <!-- 
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"style="margin-left: -21px; margin-right: -21px; padding-right: 16px;">
                	<i class="fa fa-sign-in"></i> login
                </a> 
                -->
                <!-- session에 따라 로그인/로그아웃 표시 -->
                <%=login%>
                
                <!-- 로그인 양식 -->
                <div class="dropdown-menu dropdown-menu-right dropdown-login-box animated fadeInUp" style="margin-right: -218px;height: 159px;">
                    <form role="form" name="loginForm" action="loginValue" method="post" onSubmit="loginCheck(); return false">

                        <div class="form-group">
                            <div class="input-group login-input">
                                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                <input type="text" name="m_email" id="inputEmail" class="form-control" placeholder="이메일 주소">
                            </div>
                            <br>
                            <div class="input-group login-input" style="margin-top: -15px;">
                                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                <input type="password" name="m_passwd" id="inputPassword" class="form-control" placeholder="비밀번호">
                            </div>
                            <div class="checkbox pull-left">
                               
                                   <input type="checkbox" id="emailsave" name="emailsave" class="check"><label for="emailsave">이메일 기억하기 </label><br>
                                   <input type="checkbox" id="autologin" name="autologin" class="check"><label for="autologin"> 자동로그인 </label>
                                
                                <br>
                                <!-- <span class="cr6aa7cc lPad10" id="checkLogin">${loginValue}</span>  ajax사용해서 아이디비번확인 문구 받아오는부분 추후수정예정 --> 
                            </div>
                            <button type="submit" value="Login" id="btnSubmit" class="btn btn-ar btn-primary pull-right" style="width: 130px;height: 45px;font-size: 20px;font-weight: bold;">로그인</button>
                            <div class="clearfix"></div>
                        </div>
                    </form>
                </div>
            </div> <!-- dropdown -->
            
            <!-- 회원가입/회원아이디 -->
            <div class="dropdown animated fadeInDown animation-delay-11">
            	
            	<!--
            	<a href="#" class="dropdown-toggle" data-toggle="dropdown" style="margin-right: -22px;"><i class="fa fa-user-plus"></i> 회원가입 </a>
            	-->
            	<!-- session에 따라 회원가입/회원아이디 표시 -->
                <%=member%>


                <!-- 회원가입 양식  -->
               
               <div class="dropdown-menu dropdown-menu-right dropdown-login-box animated fadeInUp" style="margin-right: -195px;">
                    <form role="form" name="regForm" action="memberinsert" method="post" onSubmit="inputCheck(); return false">
                        <h4> 회원가입 </h4>

                        <div class="form-group" >
                            <div class="input-group login-input" >
                                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                <input type="text" class="form-control" name="m_email" id="m_email" size="15" maxlength="30" onKeyDown="keyCodeCheckID(event,this);" onKeyUp="jsChkID();"onBlur="DuplicateIDCheck(this);" placeholder="이메일 주소">
                            </div>
                            <span onclick="DuplicateIDCheck(document.regForm.m_email); return false;" class="btn btn-default">중복확인</span>
                            <span id="checkMsgID" class="cr6aa7cc lPad10" style="font-size: 15px;vertical-align: -webkit-baseline-middle;"></span>
                            <br>
                            <br>
                            <div class="input-group login-input" style="margin-top: -10px;margin-bottom: -18px;">
                                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                <input type="text" class="form-control" name="m_name" size="15" placeholder="이름">
                            </div>
                            <br>
                            <span class="cr6aa7cc lPad10" style="font-size : 12px;">공백없는 8~16자의 영문/숫자를 조합</span>
                            <div class="input-group login-input">
                                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                <input type="password" class="form-control" name="m_passwd" maxlength="16" size="15" onKeyUp="checkPwd();" onKeyDown="checkPwd();" placeholder="비밀번호">
                            </div>
                            <br>
                            <div class="input-group login-input" style="margin-top: -17px;">
                                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                <input type="password" class="form-control" name="repasswd" maxlength="16" size="15" onKeyUp="checkPwd();" onKeyDown="checkPwd();" placeholder="비밀번호 확인">
                            </div>
                            <span class="cr6aa7cc lPad10" id="checkPwd"></span>
                            <br>
                            <div class="checkbox pull-left"style="margin-top: -15px;">
                                <input type="checkbox" id="agreeUse" name="agreeUse" class="check" /> 
                                	<label for="agreeUse"> 
                                		<strong><a href="#" id="modify" style="color: #9d9d9d;padding: 0;height: 35px;border: 0px;background-color: #F3F3F3;" data-toggle="modal" data-target="#agreeUseModal">‘이용약관‘</a></strong>
                                		에 동의 합니다.
                                	</label>
                                <input type="checkbox" id="agreePrivate" name="agreePrivate" class="check" /> 
                                	<label for="agreePrivate"> 
                                		<strong><a href="#" id="modify" style="color: #9d9d9d;padding: 0;height: 35px;border: 0px;background-color: #F3F3F3;" data-toggle="modal" data-target="#agreeagreePrivateModal">‘개인정보 취급방침‘</a></strong>
                                		에 동의 합니다.
                                	</label>
                            </div>
                            &nbsp;&nbsp;&nbsp;&nbsp; <img src="${path}/resources/img/facebook.png" id="facebook" height="40px" style="margin-bottom: -12px">&nbsp;&nbsp;
     						<img src="${path}/resources/img/twitter.png" height="40px" style="margin-bottom: -12px">&nbsp;&nbsp;
     						<img src="${path}/resources/img/kakaotalk.png" height="40px" style="margin-bottom: -12px">
                            <button type="submit" class="btn btn-ar btn-primary pull-right" id="memberInsertBtn" name="memberInsertBtn" style="width: 100px;height: 40px;margin-top: 0px;margin-right: 5px;font-size: 17px;font-weight: bold;">회원가입</button>
                            <div class="clearfix"></div>
                        </div>
                    </form>
                </div>


            </div> <!-- dropdown -->
            
            

            <div class="dropdown animated fadeInDown animation-delay-13" >
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="height: 35px;"><i class="fa fa-search"></i></a>
                <div class="dropdown-menu dropdown-menu-right dropdown-search-box animated fadeInDown" style="border-color: #F1F1F1; background-color: #F1F1F1; margin-right: -10px;">
                    <form role="form">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="주차할 지역을 입력해주세요">
                            <span class="input-group-btn">
                                <button class="btn btn-ar btn-primary" type="button" style="height: 34px;"><i class="fa fa-search"></i></button>
                            </span>
                        </div><!-- /input-group -->
                    </form>
                </div>
            </div> <!-- dropdown -->
        </nav>
    </div> <!-- container -->
</header> <!-- header-full -->
<nav class="navbar navbar-static-top navbar-default navbar-header-full navbar-inverse yamm" role="navigation" id="header">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <i class="fa fa-bars"></i>
            </button>
            <a id="ar-brand" class="navbar-brand hidden-lg hidden-md hidden-sm" href="index.html">Artificial <span>Reason</span></a>
        </div> <!-- navbar-header -->

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="pull-right">
            <a href="javascript:void(0);" class="sb-icon-navbar sb-toggle-right"><i class="fa fa-bars" style="margin-left: 0;padding-left: 15px;"></i></a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
            
                <li style="width: 200px; text-align: center;">
                    <a href="index.html">서비스 안내</a>
                </li>
                
                <li class="dropdown" style="width: 200px; text-align: center;">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">고객 센터</a>
                     <ul class="dropdown-menu dropdown-menu-left animated-2x animated fadeIn">
                      <li><a href="components_tooltip_popover.html" style="font-size: 15px;"><i class="fa fa-bullhorn"></i> &nbsp;공지사항 </a></li>
                      <li><a href="components_alerts_wells.html" style="font-size: 15px;"><i class="fa fa-info-circle"></i> &nbsp;자주묻는질문</a></li>
                      <li><a href="css_blockquotes.html" style="font-size: 15px;"><i class="fa fa-quote-right"></i> &nbsp;1:1 문의</a></li>
                    </ul>
                </li>
                
                <li style="width: 200px; text-align: center;">
                    <a href="parkinglot/map_search" >주차장 찾기</a>
                </li>
                
                <li style="width: 200px; text-align: center;">
                    <a href="parkinglot/registration" >주차장 등록</a>
                </li>
                
                <li class="dropdown" style="width: 200px; text-align: center;">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">마이 페이지</a>
                     <ul class="dropdown-menu dropdown-menu-left animated-2x animated fadeIn">
                      <li><a href="#" id="modify" data-toggle="modal" data-target="#pwdModal" style="font-family: Montserrat,sans-serif;font-size: 17px;"><i class="fa fa-cogs"></i> &nbsp;개인정보 수정 </a></li>
                      <li><a href="components_alerts_wells.html" style="font-size: 15px;"><i class="fa fa-wrench"></i> &nbsp;내 주차장 관리</a></li>
                      <li><a href="css_blockquotes.html" style="font-size: 15px;"><i class="fa fa-check-square-o"></i> &nbsp;내 주차장 예약</a></li>
                    </ul>
                </li>
                
             </ul>
        </div><!-- navbar-collapse -->
    </div><!-- container -->
</nav>

<header id="header-full">
    <div class="wrap-primary">
        <div class="container">
        
            <!-- <h1 class="head-title animated bounceInDown animation-delay-8">주차 팍팍!</h1> -->
            
            <!-- 메인화면 이미지 -->
            <img src="<%=request.getContextPath() %>/bootstrap/assets/img/logo_raw_white_park.png" alt="" class="aligncenter head-full-logo animated bounceIn animation-delay-5"
            style="width: 700px; margin-top: 70px; margin-bottom: 70px;">
            
            
            <form action="parkinglot/search" method="post">   <!-- 검색 시 보내질 form -->
            <div class="row animated fadeIn animation-delay-18" style="margin-bottom : 40px;" align="center">
              <div class="col-md-8 col-md-offset-2">
                <div class="input-group" style="width: 450px; height: 50px;"> <!-- 메인검색창 & 버튼 전체 너비 -->
                  <input type="text" name="searchValue" class="form-control" placeholder="주차할 지역을 입력해주세요 (ex. 강남구, 논현동 등)" style="height: 50px; font-weight: bold;">
                  <span class="input-group-btn">
                    <button class="btn btn-primary" style="background-color: #38D3FF; height: 50px; font-weight: bold; font-size: 23px;" type="submit" onclick="panTo()">
                    	<i class="fa fa-search"></i> 
                    </button>
                  </span>
                </div><!-- /input-group -->
              </div><!-- /.col-lg-6 -->
            </div><!-- /.row -->    
            </form>
            
            <h2 class="secondary-color text-center head-subtitle animated fadeInUp animation-delay-14" style="font-weight: bold;">가득 찬 주차장은 이제 그만!</h2>
            <h2 class="secondary-color text-center head-subtitle animated fadeInUp animation-delay-14" style="font-weight: bold;">지금 바로 비어있는 주차장을 찾고 한 번에 주차하세요!</h2>
            
            
            <!-- <p class="lead text-center animated fadeInUp animation-delay-14">
            We bring the revolution to the web design, our principles are experience, knowledge and creativity. Discover all that can offer artificial reason.</p> -->
            
            
        </div>
    </div>
</header>

<section class="wrap-dark-color margin-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-7 feature-container">
                    <!-- <a class="feature-icon">
                        <i class="fa fa-desktop"></i>
                        <h4>Retina</h4>
                    </a> -->
                    <a class="feature-icon">
                        <i class="fa fa-usd"></i>
                        <h4>저렴한 가격으로</h4>
                    </a>
                    <a class="feature-icon">
                        <i class="fa fa-clock-o"></i>
                        <h4>원하는 시간에</h4>
                    </a>
                    <a class="feature-icon">
                        <i class="fa fa-map-marker"></i>
                        <h4>원하는 장소에서</h4>
                    </a>
                </div>
                <div class="col-md-5 hidden-sm hidden-xs" style="font-size: 18px;">
                    <p class="lead text-center"> 주차는 주차팍팍에게 맡겨주세요! <br> 기존 사설주차장 대비 50~80% 저렴합니다.</p>
                </div>
            </div>
        </div>
    </section>


	
<div class="row header-full-icons text-center" style="margin-top: 140px; margin-bottom: 120px; padding-left: 200px; padding-right: 200px; ">
    <div class="col-sm-3 animated fadeInDown animation-delay-19">
        <span class="icon-ar icon-ar-no-border icon-ar-rxl-lg icon-ar-blue icon-ar-inverse" style="font-size: 240px;"><i class="fa fa-search"></i></span>
        <h3 style="text-shadow: 0 1px 2px rgba(255,255,255,.15);font-size: 50px;">Search!</h3>
        <p class="text-center" style="font-size: 21px; text-shadow: 0 1px 2px rgba(255,255,255,.15);">주차하려는 지역을 검색해주세요</p>
    </div>
    
    <div class="col-sm-2 animated fadeIn animation-delay-19">
        <span class="icon-ar icon-ar-no-border icon-ar-rxl-lg icon-ar-blue " style="font-size: 80px;background-color: white;color: rgb(235, 251, 255);margin-left: -60px;margin-top: 130px;"><i class="fa fa-arrow-right"></i></span>
    </div>
    
    <div class="col-sm-2 animated fadeInDown animation-delay-21">
        <span class="icon-ar icon-ar-no-border icon-ar-rxl-lg icon-ar-blue icon-ar-inverse" style="font-size: 240px;"><i class="fa fa-map-marker"></i></span>
        <h3 style="text-shadow: 0 1px 2px rgba(255,255,255,.15);font-size: 50px;">Select!</h3>
        <p class="text-center" style="font-size: 21px;width: 285px;margin-left: -25px;text-shadow: 0 1px 2px rgba(255,255,255,.15);">원하는 주차장을 선택해주세요</p>
    </div>
    
    <div class="col-sm-2 animated fadeIn animation-delay-19">
        <span class="icon-ar icon-ar-no-border icon-ar-rxl-lg icon-ar-blue " style="font-size: 80px;background-color: white;color: rgb(235, 251, 255);margin-top: 130px;"><i class="fa fa-arrow-right"></i></span>
    </div>
    
    <div class="col-sm-3 animated fadeInDown animation-delay-22">
        <span class="icon-ar icon-ar-no-border icon-ar-rxl-lg icon-ar-blue icon-ar-inverse" style="font-size: 240px; margin-left: 30px;"><i class="fa fa-check-square-o"></i></span>
        <h3 style="text-shadow: 0 1px 2px rgba(255,255,255,.15);font-size: 50px;">Done!</h3>
        <p class="text-center" style="font-size: 21px; text-shadow: 0 1px 2px rgba(255,255,255,.15);">단 10초 만에 예약 완료!</p>
    </div>
</div>


<div class="container">
    <section class="margin-bottom">
        <div class="row">
        
            <div class="col-md-12">
				<h2 class="right-line" style="font-family: Montserrat,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif; font-size: 25px; color: #38D3FF;margin-bottom: 70px;">남는 주차장의 공간으로 수익을 거둘 수 있습니다!</h2>
            </div>
            
            <div class="col-md-4 col-sm-6" style="width: 60%">
                <div class="text-icon wow fadeInUp" style="margin-bottom: 0;">
                    <!-- <span class="icon-ar icon-ar-lg"><i class="fa fa-usd"></i></span> -->
                    <div class="text-icon-content" style="margin-top: 44px;">
                    	<span class="icon-ar icon-ar-no-border icon-ar-rxl-lg icon-ar-blue icon-ar-inverse" style="margin-top: -38px;"><i class="fa fa-usd"></i></span>
                        <h3 class="no-margin" style="width: 400px;">주차장 등록 수수료 선착순 무료!</h3>
                        <p style="font-size: 23px;">대부분의 시간 동안 텅텅 비어있는 주차장이 있으신가요? </p>
                        <p style="font-size: 23px;">1분 만에 주차장을 등록하고 매일매일 수익을 가져가세요!</p>
                    </div>
                </div>
            </div>
		           
			<div class="col-lg-4 col-md-6 col-sm-6" style="float: right; margin-right: 50px;">
			   <div class="img-caption-ar wow fadeInUp">
			       <img src="<%=request.getContextPath() %>/bootstrap/assets/img/parking_regist.jpg" class="img-responsive" alt="Image">
			       <div class="caption-ar">
			           <div class="caption-content">
			               <a href="#" class="animated fadeInDown" style="margin-top: 20px;"><i class="fa fa-search"></i>주차장 구경하기</a>
			               <!-- <h4 class="caption-title">Image title</h4> -->
			            </div>
			        </div>
			    </div>
			</div>
		     
      		<div class="col-md-7" style="text-align: center;">
                <ul class="services-header-list" style="margin-left: 80px;">
                    <li class="animated fadeInUp animation-delay-5" style="background-color: #38D3FF;">
                    	<a href="parkinglot/registration" >내 주차장 등록하기</a>
                    </li>
                </ul>
            </div>
            
            <div class="col-md-12" style="margin-top: 30px; margin-bottom: 50px;">
				<h2 class="right-line" style="color: #FFFFFF; font-size: 0.1px;">.</h2>
      		</div>
      		
        </div> <!-- row -->
    </section>
</div>


<div class="container">
    <div class="row">
    
        <div class="col-md-12" style="text-align: center;">
			<h2 style="font-family: Montserrat,Helvetica,Arial,sans-serif;font-size: 35px; color: #38D3FF;margin-bottom: 40px;">여러분의 주차를 책임집니다!</h2>
        </div>
        
        <div class="col-md-12">
            <section class="css-section">
                <!-- <h2 class="section-title">여러분의 주차를 책임집니다!</h2> -->
               
                <ul class="bxslider" id="bx3" style="font-family: Montserrat,Helvetica,Arial,sans-serif;">
                  <li>
                    <div class="thumbnail" style="border:0px;">
                      <img src="<%=request.getContextPath() %>/bootstrap/assets/img/customer_1.jpg" alt="...">
                      <div class="caption" style="text-align: center;">
                        <h3>처음 써보는데 너무 편리해요!!</h3>
                        <p>처음 사용해보는데 어떻게 사용하는건지 설명이 잘 되어있어서 쉽게 예약할 수 있었네요. 예약하면서 로드뷰로 실제 주차장 위치를 보여줘서 안헤매고 한번에 잘 찾아 갈 수 있었어요. 원하는 시간에 예약해서 주차장 잘 이용했습니다~</p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="thumbnail" style="border:0px;">
                      <img src="<%=request.getContextPath() %>/bootstrap/assets/img/customer_2.jpg" alt="...">
                      <div class="caption" style="text-align: center;">
                        <h3>늘 주차하기 너무 힘들었는데..</h3>
                        <p>가끔 일때문에 서울 오는데 올때마다 주차때문에 힘들었거든요.주차요금도 너무 비쌌구요.서울 사는 친구한테 말했더니 자기도 자주 쓴다고 주차팍팍 추천해주더라구요~오늘 처음 써봤는데 완전 유용해요!저렴하고 안전하게 주차할 수 있었습니다. 자주 이용할게요~!</p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="thumbnail" style="border:0px;">
                      <img src="<%=request.getContextPath() %>/bootstrap/assets/img/customer_3.jpg" alt="...">
                      <div class="caption" style="text-align: center;">
                        <h3>자주 이용하고 있어요 주차팍팍!</h3>
                        <p>한번 써보고 너무 편해서 주변에 추천해주고있어요~일반 사설 주차장은 남은자리있나없나 들어갔다와야하고 열쇠도 맡기고 좀 불안한게 있었어요.주차 팍팍은 미리 예약하고 가면 되고 열쇠 맡길필요도 없어서 안심이네요! 주변에 추천해준 친구들 반응도 좋아요~</p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="thumbnail" style="border:0px;">
                      <img src="<%=request.getContextPath() %>/bootstrap/assets/img/customer_4.jpg" alt="...">
                      <div class="caption" style="text-align: center;">
                        <h3>벌써 단골주차장도 생겼어요.</h3>
                        <p>회사 근처에 차댈곳이 없어서 항상 멀리대고 걸어왔었는데 주차팍팍 알게된 후에 그럴필요가 없어졌어요. 회사근처에 퇴근시간까지 예약 가능한 주차장이 잇어서 매일 거기 이용하고 잇습니다. 상상도 못했던 아침 시간여유도 생겼어요~주차팍팍덕분입니다!^^ </p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="thumbnail" style="border:0px;">
                      <img src="<%=request.getContextPath() %>/bootstrap/assets/img/customer_5.jpg" alt="...">
                      <div class="caption" style="text-align: center;">
                        <h3>매일같이 주차 전쟁이었는데..</h3>
                        <p>주택가 많은 곳에 살고 있어 주차전쟁을 치루던 사람입니다. 주차장에 주차하려해도 9시 10시면 끝나고 월마다 비싼요금 지불해야하고..꽤 부담갔었는데 주차팍팍 이용하니 부담도 줄고 주차전쟁스트레스에서도 벗어났네요.사업 번창하세요.</p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="thumbnail" style="border:0px;">
                      <img src="<%=request.getContextPath() %>/bootstrap/assets/img/customer_6.jpg" alt="...">
                      <div class="caption" style="text-align: center;">
                        <h3>이제서야 이런 서비스가ㅠㅠ</h3>
                        <p>지금까지 비싼 주차장들을 쓰면서 길거리에 버린 돈들이 아깝네요. 이제서야 나오다니! 비슷한 서비스들 많이 봤지만 제일 빠른 것 같아요. 궁디팡팡 해줄테니 어서 서비스 팍팍! 키워주세요! 자주자주 애용하겠습니다 고마워요!!</p>
                      </div>
                    </div>
                  </li>
<%--                   <li>
                    <div class="thumbnail">
                      <img src="<%=request.getContextPath() %>/bootstrap/assets/img/parking_regist.jpg" alt="...">
                      <div class="caption" style="text-align: center;">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem, repellat, vitae porro ex expedita cumque nulla velit consequuntur recusandae animi.</p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="thumbnail">
                      <img src="<%=request.getContextPath() %>/bootstrap/assets/img/parking_regist.jpg" alt="...">
                      <div class="caption" style="text-align: center;">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem, repellat, vitae porro ex expedita cumque nulla velit consequuntur recusandae animi.</p>
                      </div>
                    </div>
                  </li> --%>
                </ul>
		        
		        <div class="bxslider-controls" style="margin-top: -40px; margin-right: 1%;">
		            <span id="bx-prev"></span>
		        </div>	

		        <div class="bxslider-controls" style="margin-top: -40px; margin-right: 1%;">
		            <span id="bx-next"></span>
		        </div>	
            </section>
        </div>
        
    </div>
</div>


        
<div class="container">
    <div class="row">
    
		<div class="col-md-10" style="text-align: center;">
		  <ul class="services-header-list" style="margin-left: 190px;margin-top: -40px;margin-bottom: 130px;">
		     <li class="animated fadeInUp animation-delay-5" style="background-color: #38D3FF;">
		     	<a href="#">주차장 예약하기</a>
		     </li>
		  </ul>
		</div>
		            
    </div>
</div> 		


<!-- 
<div class="container">
    <section class="margin-bottom">
        <p class="lead lead-lg text-center primary-color margin-bottom wow fadeInDown">Knows the <strong>Artificial Reason</strong> and surprise yourself</p>
       <div class="row">
            <div class="col-md-6 wow fadeInRight">
                <h2 class="no-margin-top">About us</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, alias, nihil molestias libero corporis perferendis a quasi at.</p>
                <p>Eos, illum, odit nulla provident sint atque quasi necessitatibus dolores voluptatibus perspiciatis aliquid tempora possimus laudantium. Blanditiis, deleniti!</p>
                <p>Saepe, laborum, eligendi vitae ad excepturi officiis vel omnis quidem et dolorum rem vero explicabo consequatur mollitia nihil!</p>
                <p>Fuga, omnis, quo, cumque, ipsa quasi facilis voluptatibus iure veniam nostrum voluptate accusantium dolore reprehenderit. Corrupti, mollitia, maiores!</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit ducimus, pariatur ad ipsam et quod numquam eveniet magni aspernatur.</p>

            </div>
            <div class="col-md-6">
                <div class="panel-group" id="accordion">
                  <div class="panel panel-default wow fadeInUp">
                    <div class="panel-heading panel-heading-link">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                          <i class="fa fa-lightbulb-o"></i> Talent and creativity
                        </a>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                      <div class="panel-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati molestiae id ipsum ipsa repudiandae. Voluptatum, molestias, quas magnam repellat quos facilis sequi. Ullam optio eius deleniti dolore quasi doloribus ipsam incidunt perferendis.</p>
                        <p>Dolores, corrupti, laborum, officia sit aliquam doloremque accusantium nemo sunt veniam est incidunt perferendis minima obcaecati ex aperiam voluptatibus blanditiis eum suscipit magnam dolorum in adipisci nihil ipsam perspiciatis molestiae!</p>
                      </div>
                    </div>
                  </div>
                  <div class="panel panel-default wow fadeInUp">
                    <div class="panel-heading panel-heading-link">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed">
                          <i class="fa fa-desktop"></i> Design and code
                        </a>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse">
                      <div class="panel-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit dignissimos inventore cupiditate expedita saepe enim nobis nostrum? Laborum, laudantium, maiores, cupiditate, perspiciatis at ad accusamus corporis sed ipsam et velit!</p>
                        <p>Incidunt, harum itaque voluptatum asperiores recusandae explicabo maiores. Alias, quos, ex impedit at error id laborum fugit architecto qui beatae molestiae dolorum rem veritatis quia aliquam totam accusamus perferendis. Nulla!</p>
                      </div>
                    </div>
                  </div>
                  <div class="panel panel-default wow fadeInUp">
                    <div class="panel-heading panel-heading-link">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed">
                          <i class="fa fa-user"></i> Quality and Support
                        </a>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse">
                      <div class="panel-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia, rerum unde doloribus accusamus pariatur non expedita quibusdam velit totam obcaecati. Consequatur, deserunt, asperiores quam nisi earum voluptates animi labore tempore!</p>
                        <p>Dolorum, aliquam, totam labore saepe error a eum culpa assumenda sint laudantium ipsa iure ullam et dicta nesciunt repellendus optio voluptatibus reprehenderit odit officia fugiat necessitatibus recusandae architecto ad neque?</p>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
       </div>
   </section>
</div>
 -->
 

<aside id="footer-widgets" style="padding-top: 15px;padding-bottom: 40px;">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h3 class="footer-widget-title">사이트맵</h3>
                <ul class="list-unstyled three_cols">
                    <li><a href="index.html">메인화면</a></li>
                    <li><a href="blog.html">주차장 찾기</a></li>
                    <li><a href="portfolio_sidebar.html">주차장 예약</a></li>
                    <li><a href="portfolio_topvar.html">마이페이지</a></li>
                    <li><a href="page_timeline_left.html">주차장 등록</a></li>
                    <li><a href="page_pricing.html">내 주차장 관리</a></li>
                    <li><a href="page_about2.html">예약 관리</a></li>
                    <li><a href="page_team.html">서비스 소개</a></li>
                    <li><a href="page_services.html">로그인</a></li>
                    <li><a href="page_support.html">자주묻는 질문</a></li>
                    <li><a href="page_login_full.html">1:1 문의</a></li>
                </ul>
                <h3 class="footer-widget-title">소식 받아보기</h3>
                <p>주차팍팍의 새로운 소식을 전해드립니다!</p> 
				<p style="margin-top: -10px;">이메일로 이벤트와 할인 소식을 꼼꼼히 챙겨드려요!</p>
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Email Address">
                    <span class="input-group-btn">
                        <button class="btn btn-ar btn-primary" type="button">소식 받아보기</button>
                    </span>
                </div><!-- /input-group -->
            </div>
            <div class="col-md-4">
                <div class="footer-widget">
                    <h3 class="footer-widget-title">최근 후기</h3>
                    <div class="media">
                        <a class="pull-left" href="#"><img class="media-object" src="<%=request.getContextPath() %>/bootstrap/assets/img/demo/m2.jpg" width="75" height="75" alt="image"></a>
                        <div class="media-body">
                            <h4 class="media-heading"><a href="#">간단히 주차장만 쓰려고 다운로드 받았는데 요새는 수입도 쏠쏠하게 받고 있네요!</a></h4>
                            <small>August 18, 2015</small>
                        </div>
                    </div>
                    <div class="media">
                        <a class="pull-left" href="#"><img class="media-object" src="<%=request.getContextPath() %>/bootstrap/assets/img/demo/m11.jpg" width="75" height="75" alt="image"></a>
                        <div class="media-body">
                            <h4 class="media-heading"><a href="#">공연할 때마다 애써서 주차장을 찾으려고 헤매이지 않아도 되니 정말 편합니다.</a></h4>
                            <small>September 14, 2015</small>
                        </div>
                    </div>
                    <div class="media">
                        <a class="pull-left" href="#"><img class="media-object" src="<%=request.getContextPath() %>/bootstrap/assets/img/demo/m4.jpg" width="75" height="75" alt="image"></a>
                        <div class="media-body">
                            <h4 class="media-heading"><a href="#">바닷가 가까이에도 이렇게 저렴한 주차장이 있다니! 고마워요 주차팍팍!!</a></h4>
                            <small>October 9, 2015</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="footer-widget">
                    <h3 class="footer-widget-title">새로 등록된 주차장</h3>
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-6">
                            <a href="#" class="thumbnail"><img src="<%=request.getContextPath() %>/bootstrap/assets/img/parking_lot_main_1.jpg" class="img-responsive" alt="Image"></a>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-6">
                            <a href="#" class="thumbnail"><img src="<%=request.getContextPath() %>/bootstrap/assets/img/parking_lot_main_2.jpg" class="img-responsive" alt="Image"></a>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-6">
                            <a href="#" class="thumbnail"><img src="<%=request.getContextPath() %>/bootstrap/assets/img/parking_lot_main_3.jpg" class="img-responsive" alt="Image"></a>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-6">
                            <a href="#" class="thumbnail"><img src="<%=request.getContextPath() %>/bootstrap/assets/img/parking_lot_main_4.jpg" class="img-responsive" alt="Image"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
</aside> <!-- footer-widgets -->
<footer id="footer" style="padding-top: 40px;padding-bottom: 40px;">
	<p style="margin-bottom: 3px;">(주)주차팍팍 | 서울특별시 강남구 역삼동 819-10 세경빌딩 3층 | help@parkpark.com | 02-4213-2145</p>
	<p style="margin-bottom: 3px;">사업자등록번호 123-45-67891 | 대표이사 주차팍 | 개인정보책임자 박주차 </p>
	<p> © 2016 <a href="#">ParkPark</a>,Inc. All Rights Reserved</p>
</footer>

</div> <!-- boxed -->
</div> <!-- sb-site -->

<div class="sb-slidebar sb-right">
    <div class="input-group">
        <input type="text" class="form-control" placeholder="주차할 지역을 입력해주세요">
        <span class="input-group-btn">
            <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
        </span>
    </div><!-- /input-group -->

    <h2 class="slidebar-header no-margin-bottom" style="font-size: 28px;">MyPage</h2>
    <ul class="slidebar-menu">
<!--         <li><a href="index.html" style="font-family: Montserrat,sans-serif;font-size: 17px;"><i class="fa fa-cogs"></i> &nbsp;개인정보 수정</a></li>
        <li><a href="portfolio_topbar.html" style="font-family: Montserrat,sans-serif;font-size: 17px;"><i class="fa fa-wrench"></i> &nbsp;내 주차장 관리</a></li>
        <li><a href="page_about3.html" style="font-family: Montserrat,sans-serif;font-size: 17px;"><i class="fa fa-check-square-o"></i> &nbsp;내 주차장 예약</a></li>
        <li><a href="index.html" style="font-family: Montserrat,sans-serif;font-size: 17px;"><i class= "fa fa-sign-out"></i> &nbsp; 로그아웃</a></li>
        <li><a href="blog.html" style="font-family: Montserrat,sans-serif;font-size: 17px;"><i class= "fa fa-quote-right"></i> &nbsp; 1:1 문의</a></li> -->
		<%=myPage%>
    </ul>

    <h2 class="slidebar-header" style = "font-family: Montserrat,"Helvetica Neue",Helvetica,Arial,sans-serif; font-size: 20px; padding-bottom: 23px;">
    	제휴를 환영합니다!
    </h2>
    <div class="slidebar-social-icons">
        <a href="#" class="social-icon-ar rss"><i class="fa fa-rss"></i></a>
        <a href="#" class="social-icon-ar facebook"><i class="fa fa-facebook"></i></a>
        <a href="#" class="social-icon-ar twitter"><i class="fa fa-twitter"></i></a>
        <a href="#" class="social-icon-ar pinterest"><i class="fa fa-pinterest"></i></a>
        <a href="#" class="social-icon-ar instagram"><i class="fa fa-instagram"></i></a>
        <a href="#" class="social-icon-ar wordpress"><i class="fa fa-wordpress"></i></a>
        <a href="#" class="social-icon-ar linkedin"><i class="fa fa-linkedin"></i></a>
        <a href="#" class="social-icon-ar flickr"><i class="fa fa-flickr"></i></a>
        <a href="#" class="social-icon-ar vine"><i class="fa fa-vine"></i></a>
        <a href="#" class="social-icon-ar dribbble"><i class="fa fa-dribbble"></i></a>
    </div>
</div> <!-- sb-slidebar sb-right -->

<div id="back-top">
    <a href="#header"><i class="fa fa-chevron-up"></i></a>
</div>

<!-- Scripts -->
<!-- Compiled in vendors.js -->
<!--
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/jquery.cookie.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/imagesloaded.pkgd.min.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/bootstrap-switch.min.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/wow.min.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/slidebars.min.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/jquery.bxslider.min.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/holder.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/buttons.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/jquery.mixitup.min.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/circles.min.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/masonry.pkgd.min.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/jquery.matchHeight-min.js"></script>
-->

<script src="<%=request.getContextPath() %>/bootstrap/assets/js/vendors.js"></script>

<!-- Syntaxhighlighter -->
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/syntaxhighlighter/shCore.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/syntaxhighlighter/shBrushXml.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/syntaxhighlighter/shBrushJScript.js"></script>

<script src="<%=request.getContextPath() %>/bootstrap/assets/js/DropdownHover.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/app.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/home_full.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/assets/js/carousels.js"></script>

<!-- 회원정보 수정 전 비밀번호 확인 modal -->
<div class="modal fade" id="pwdModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document" style="margin-top: 122px;" >
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel"><span class="glyphicon glyphicon-ok-sign"></span>비밀번호 확인</h4>
      </div>
      <div class="modal-body">
       <form name="modifyFrm" method="post">
          <ul style="list-style:none;">
             <li class="modal1"><h4>비밀번호 확인을 위해 다시 한번 입력해주세요.</h4></li>
             <li class="modal1">
 				<input type="hidden" name="m_email" id="pwdCheckemail" size="15" value="${emailKey}"/>
                <input type="password" name="m_passwd" id="pwdCheckpasswd" class="form-control" placeholder="Password" autofocus>
             	<span class="cr6aa7cc lPad10" id="checkPassword"></span>
             </li>
             <li><br/></li>
          </ul>
       </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" >Close</button>
        <button type="button" class="btn btn-primary" onclick="passwdCheck()" style="background-color:#1BA4E7; border:0px;">Ok</button>
      </div>
    </div>
  </div>
</div> 

<!-- 이용약관에 대한 modal -->
<div class="modal fade" id="agreeUseModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document" style="margin-top: 122px;">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel"><span class="glyphicon glyphicon-ok-sign"></span>이용약관</h4>
      </div>
      <div class="modal-body">
       <p class="tit">제 1 장 총 칙</p>
						<dl>
							<dt>제 1조 (목적)</dt>
							<dd>
								이 약관은 주차팍팍주식회사(이하 "회사") 가 운영하는 인터넷 사이트를 통하여 제공하는 전자상거래 관련 서비스(이하 "서비스")를 이용함에 있어 회사와 이용자의 권리·의무 및 책임사항을 규정함을 목적으로 합니다. * PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.
							</dd>
						</dl>
						<dl>
							<dt>제 2조 (정의)</dt>
							<dd>
								<ol>
									<li>1. "회사"란 주차팍팍주식회사가 재화 또는 용역(이하 "재화 등"이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신 설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버 몰을 운영하는 사업자의 의미로도 사용합니다.</li>
									<li>2. "이용자"란 "회사"에 접속하여 이 약관에 따라 "회사"가 제공하는 서비스를 받는 회원 및 비회원을 말합니다.</li>
									<li>3. 회원이라 함은 "회사"에 개인정보를 제공하여 회원 등록을 한 자로서, "회사"의 정보를 지속적으로 제공 받으며, "회사"가 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.</li>
									<li>4. "비회원"이라 함은 회원에 가입하지 않고 "회사"가 제공하는 서비스를 이용하는 자를 말합니다.</li>
									<li>5. 이외에 이 약관에서 사용하는 용어의 정의는 관계 법령 및 서비스 별 안내에서 정하는 바에 의합니다.</li>
								</ol>
							</dd>
						</dl>
						<dl>
							<dt>제 3조 (약관 등의 명시와 설명 및 개정)</dt>
							<dd>
								<ol>
									<li>1. "회사"는 이 약관의 내용과 상호, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호, 모사전송번호, 이메일주소, 사업자등록번호, 통신판매업신고번호, 개인정보관리책임자 등을 이용자가 쉽게 알 수 있도록 "회사"의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.</li>
									<li>2. "회사"는 약관의규제에관한법률, 전자상거래등에서의소비자보호에관한법률, 소비자기본법 등 관련법을 위배하지 않는 범위 에서 이 약관을 개정할 수 있습니다.</li>
									<li>3. "회사"는 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 "회사"의 초기화면이나 팝업화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 "회사"는 개정전 내용과 개정후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.</li>
									<li>4. "회사"가 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제4항에 의한 개정약관의 공지기간 내에 "회사"에 송신하여 "회사"의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.</li>
									<li>5. 이 약관에서 정하지 아니한 내용과 이 약관의 해석에 관하여는 전자상거래등에서의소비자보호에관한법률, 약관의규제등에관한법률, 공정거래위원회가 정하는 전자상거래등에서의소비자보호지침 및 관계법령 또는 상관례에 따릅니다.</li>
								</ol>
							</dd>
						</dl>
						<p class="tit">제 2장 회사의 서비스</p>
						<dl>
							<dt>제 4조 (서비스의 제공 및 변경)</dt>
							<dd>
								<ol>
									<li>1. "회사"는 다음과 같은 서비스를 제공합니다.
										<ol>
											<li>① 재화 또는 용역에 대한 정보 제공 및 구매 계약의 체결</li>
											<li>② 구매 계약이 체결된 재화 또는 용역의 배송</li>
											<li>③ 기타 "회사"가 정하는 업무</li>
										</ol>
									</li>
									<li>2. "회사"는 상품 또는 용역이 품절되거나 기술적 사양의 변경 등으로 더 이상 제공할 수 없는 경우에는 장차 체결되는 계약에 의해 제공할 상품·용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다.</li>
									<li>3. "회사"가 제공하기로 이용자와 계약을 체결한 서비스의 내용을 상품 등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 방법으로 즉시 통지합니다.</li>
									<li>4. 전항의 경우 "회사"는 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, "회사"가 고의 또는 과실이 없음을 입증한 경우에는 아무런 책임을 부담하지 않습니다.</li>
								</ol>
							</dd>
						</dl>
						<dl>
							<dt>제 5조 (서비스의 중단)</dt>
							<dd>
								<ol>
									<li>1. "회사"는 컴퓨터 등 정보통신설비의 보수점검·교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.</li>
									<li>2. 제1항에 의한 서비스 중단의 경우에는 "회사"는 제8조에 정한 방법으로 이용자에게 통지합니다.</li>
									<li>3. "회사"는 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 "회사"의 고의성의 없는 경우에는 배상하지 아니합니다.</li>
								</ol>
							</dd>
						</dl>

						<p class="tit">제 3장 회원가입 계약</p>
						<dl>
							<dt>제 6조 (회원가입)</dt>
							<dd>
								<ol>
									<li>1. 이용자는 무료로 회원에 가입할 수 있으며, "회사"가 정한 가입 양식에 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다.</li>
									<li>2. "회사"는 제1항에 따라 회원가입을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로 등록합니다.
										<ol>
											<li>① 가입신청자가 이 약관 제7조 제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조제3항에 의한 회원자격 상실 후 3년이 경과한 자로서 "회사"가 회원 재가입을 승낙한 경우는 예외로 합니다.</li>
											<li>② 등록 내용에 허위, 기재누락, 오기가 있는 경우</li>
											<li>③ 기타 회원으로 등록하는 것이 "회사"의 기술상 현저히 지장이 있다고 판단되는 경우</li>
											<li>④ 만14세 미만의 아동으로서 부모 등 법정대리인의 동의를 얻지 아니한 경우</li>
										</ol>
									</li>
									<li>3. 회원가입은 "회사"의 승낙이 가입 신청한 이용자에게 도달한 때에 완료됩니다.</li>
									<li>4. "회원"은 "회사"에 등록한 회원정보에 변경이 있는 경우, 즉시 "회사"에서 정하는 방법에 따라 해당 변경사항을 "회사"에게 통지하거나 수정하여야 합니다. </li>
								</ol>
							</dd>
						</dl>
						<dl>
							<dt>제 7조 (회원 탈퇴 및 자격 상실 등)</dt>
							<dd>
								<ol>
									<li>1. 회원은 "회사"에 언제든지 탈퇴를 요청할 수 있으며 "회사"는 즉시 회원 탈퇴를 처리합니다.</li>
									<li>2. 회원이 다음 각호의 사유에 해당하는 경우, "회사"는 회원 자격을 제한 및 정지시킬 수 있습니다.
										<ol>
											<li>① 가입 신청 시에 허위 내용을 등록한 경우</li>
											<li>② "회사"를 이용하여 구입한 재화 등의 대금, 기타 "회사" 이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우</li>
											<li>③ 타인의 ID와 비밀번호 또는 그 개인정보를 도용한 경우</li>
											<li>④ 다른 사람의 "회사" 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우</li>
											<li>⑤ "회사"를 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우</li>
											<li>⑥ 기타 서비스 운영을 고의로 방해하는 행위를 하는 경우</li>
										</ol>
									</li>
									<li>3. "회사"가 회원 자격을 제한, 정지 시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정 되지 아니하는 경우 "회사"는 회원 자격을 상실시킬 수 있습니다.</li>
									<li>4. "회사"가 회원 자격을 상실시키는 경우에는 회원 등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원 등록 말소 전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.</li>
								</ol>
							</dd>
						</dl>
						<dl>
							<dt>제 8조 (회원에 대한 통지)</dt>
							<dd>
								<ol>
									<li>1. 회원에 대한 통지를 하는 경우 "회사"는 회원이 등록한 e-mail 주소 또는 SMS 등으로 할 수 있습니다.</li>
									<li>2. "회사"는 불특정 다수 회원에 대한 통지의 경우 서비스 게시판 등에 게시함으로써 개별 통지에 갈음할 수 있습니다.</li>
								</ol>
							</dd>
						</dl>

						<p class="tit">제 4장 구매계약 및 대금 결제</p>
						<dl>
							<dt>제 9조 (구매신청)</dt>
							<dd>
								이용자는 "회사"에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며, "회사"는 이용자가 구매신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다. 단, 회원인 경우 제2호 내지 제4호의 적용을 제외할 수 있습니다.
								<ol>
									<li>1. 재화 등의 검색 및 선택</li>
									<li>2. 성명, 주소, 전화번호, 이메일 주소(또는 이동전화번호) 등의 입력</li>
									<li>3. 약관내용, 청약 철회권이 제한되는 서비스, 배송료, 설치비 등의 비용부담과 관련한 내용에 대한 확인</li>
									<li>4. 재화 등의 구매신청 및 이에 관한 확인 또는 "회사"의 확인에 대한 동의</li>
									<li>5. 결제 방법의 선택</li>
								</ol>
							</dd>
						</dl>
						<dl>
							<dt>제 10조 (구매계약의 성립)</dt>
							<dd>
								<ol>
									<li>1. "회사"는 제9조 구매신청에 대하여 다음 각 호에 해당하면 승낙하지 않을 수 있습니다. 다만, 미성년자와 계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야 합니다.
										<ol>
											<li>① 신청 내용에 허위, 기재누락, 오기가 있는 경우</li>
											<li>② 미성년자가 담배, 주류 등 청소년보호법에서 금지하는 상품 및 용역을 구매하는 경우</li>
											<li>③ 기타 구매신청을 승낙하는 것이 "회사" 기술상 현저히 지장이 있다고 판단하는 경우</li>
											<li>④ 기타 제반 법령 및 정부의 가이드라인에 위반되는 경우</li>
										</ol>
									</li>
									<li>2. "회사"의 승낙이 제12조 제1항의 수신확인 통지형태로 이용자에게 도달한 시점에 구매계약이 성립한 것으로 봅니다.</li>
									<li>3. "회사"의 승낙의 의사표시에는 이용자의 구매신청에 대한 확인 및 판매가능 여부, 구매신청의 정정 취소 등에 관한 정보 등을 포함하여야 합니다.</li>
								</ol>
							</dd>
						</dl>
						<dl>
							<dt>제 11조 (지급방법)</dt>
							<dd>
								<ol>
									<li>1. "회사"에서 구매한 상품 또는 용역에 대한 대금지급방법은 다음 각 호의 방법 중 가용한 방법으로 할 수 있습니다. 단, "회사"는 이용자의 지급방법에 대하여 재화 등의 대금에 어떠한 명목의 수수료도 추가하여 징수할 수 없습니다.
										<ol>
											<li>① 폰뱅킹, 인터넷뱅킹, 메일뱅킹 등의 각종 계좌이체</li>
											<li>② 선불카드, 직불카드, 신용카드 등의 각종 카드 결제</li>
											<li>③ 온라인무통장입금</li>
											<li>④ 전자 화폐에 의한 결제</li>
											<li>⑤ 마일리지 등 "회사"가 지급한 포인트에 의한 결제</li>
											<li>⑥ "회사"와 계약을 맺었거나 "회사"가 인정한 상품권에 의한 결제</li>
											<li>⑦ 기타 전자적 지급 방법에 의한 대금 지급 등</li>
										</ol>
									</li>
									<li>2. 구매대금의 결제와 관련하여 이용자가 입력한 정보 및 그와 관련된 책임은 이용자에게 있으며, 재화 또는 용역의 청약 후 합리적인 일정 기간 내에 결제가 이루어 지지 않는 경우 "회사"는 이에 해당주문을 취소할 수 있습니다.</li>
									<li>3. "회사"는 구매자의 결제수단에 대하여 정당한 사용권한 보유여부를 확인할 수 있으며 필요한 경우 해당 거래진행의 정지 및 소명자료의 제출을 요청할 수 있습니다.</li>
								</ol>
							</dd>
						</dl>
						<dl>
							<dt>제 12조 (수신확인통지·구매신청 변경 및 취소)</dt>
							<dd>
								<ol>
									<li>1. "회사"는 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다.</li>
									<li>2. 수신확인 통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고, "회사"는 배송 전에 이용자의 요청이 있는 경우에는 지체 없이 그 요청에 따라 처리하여야 합니다.</li>
									<li>3. 수신확인 통지를 받은 이용자가 대금을 지불한 경우에는 제 15조의 청약철회 등에 관한 규정에 따릅니다.</li>
								</ol>
							</dd>
						</dl>
						<dl>
							<dt>제 13조 (재화 등의 공급)</dt>
							<dd>
								<ol>
									<li>1. "회사"는 이용자와 재화 등의 공급시기에 관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날로부터 7일 이내에 재화 등을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한 조치를 취합니다. 다만, "회사"가 이미 재화 등의 대금의 전부 또는 일부를 받은 날부터 2영업일 이내에 조치를 취합니다. 이때 "회사"는 이용자가 재화 등의 공급 절차 및 진행 사항을 확인 할 수 있도록 적절한 조치를 합니다.</li>
									<li>2. 공휴일 및 기타 휴무일 또는 천재지변 등의 불가항력적 사유가 발생하는 경우 그 해당기한은 배송소요기간에서 제외합니다.</li>
								</ol>
							</dd>
						</dl>
						<dl>
							<dt>제 14조 (환급)</dt>
							<dd>
								"회사"는 이용자가 구매 신청한 재화 등이 품절 등의 사유로 인도 또는 제공을 할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을 받은 날부터 3영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.
							</dd>
						</dl>
						<dl>
							<dt>제 15조 (청약 철회 등)</dt>
							<dd>
								<ol>
									<li>1. "회사"와 재화 등의 구매에 관한 계약을 체결한 이용자는 수신확인의 통지를 받은 날로부터 7일 이내에 청약의 철회를 할 수 있습니다. 다만, 통지를 받은 때보다 공급이 늦게 이루어진 경우에는 재화 등의 공급을 받은 날로부터 7일 이내에 청약 철회를 할 수 있습니다.</li>
									<li>2. 이용자는 재화 등을 배송 받은 경우 다음 각호에 해당하는 경우에는 반품 및 교환을 할 수 없습니다.
										<ol>
											<li>① 이용자의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우</li>
											<li>② 시간의 경과에 의하여 재판매가 곤란할 정도로 재화 등의 가치가 현저히 감소한 경우</li>
											<li>③ 같은 성능을 지닌 재화 등으로 복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우</li>
											<li>④ 그 밖에 거래의 안전을 위하여 대통령령이 정하는 경우</li>
										</ol>
									</li>
									<li>3. 제2항제2호 내지 제4호의 경우에는 "회사"가 사전에 청약 철회 등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나 시용 상품을 제공하는 등의 조치를 하지 않았다면 이용자의 청약 철회 등이 제한되지 않습니다.</li>
									<li>4. 이용자는 제1항 및 제2항의 규정에도 불구하고 재화 등의 내용이 표시, 광고 내용과 다르거나 계약 내용과 다르게 이행된 때에는 당해 재화 등을 공급받은 날부터 3월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약 철회 등을 할 수 있습니다.</li>
								</ol>
							</dd>
						</dl>
						<dl>
							<dt>제 16조 (청약 철회 등의 효과)</dt>
							<dd>
								<ol>
									<li>1. "회사"는 이용자로부터 재화 등을 반환 받은 경우 3영업일 이내에 이미 지급받은 재화 등의 대금을 환급 합니다. 이 경우"회사"가 이용자에게 재화 등의 환급을 지연한 때에는 그 지연 기간에 대하여 공정거래 위원회가 정하여 고시하는 지연 이자율을 곱하여 산정한 지연 이자를 지급합니다.</li>
									<li>2. "회사"는 위 대금을 환급함에 있어서 구매자가 신용카드 또는 전자금융거래법 등이 정하는 결제수단으로 재화 등의 대금을 지급한 때에는 지체 없이 당해 결제수단을 제공한 사업자로 하여금 재화 등의 대금의 청구를 정지 또는 취소하도록 요청할 수 있습니다.</li>
									<li>3. 청약 철회 등의 경우 공급 받은 재화 등의 반환에 필요한 비용은 이용자가 부담합니다. "회사"는 이용자에게 청약 철회 등을 이유로 위약금 또는 손해배상을 청구하지 않습니다. 다만 재화 등의 내용이 표시, 광고 내용과 다르거나 계약 내용과 다르게 이행되어 청약 철회 등을 하는 경우 재화 등의 반환에 필요한 비용은 "회사"가 부담합니다.</li>
									<li>4. 이용자가 재화 등을 제공받을 때 발송비를 부담한 경우에 "회사"는 청약 철회 시 그 비용을 누가 부담하는지를 알기 쉽도록 명확하게 표시합니다.</li>
								</ol>
							</dd>
						</dl>

						<p class="tit">제 5장 계약당사자의 의무</p>
						<dl>
							<dt>제 17조 (개인정보보호 및 이용)</dt>
							<dd>
								<ol>
									<li>1. "회사"는 이용자의 정보수집시 서비스의 제공에 필요한 최소한의 정보를 수집합니다. 다음 사항을 필수사항으로 하며 그 외 사항은 선택사항으로 합니다.
										<ol>
											<li>① 성명</li>
											<li>② 성별, 생년월일 (아이핀 회원은 생년월일, 성별, 아이핀 번호)</li>
											<li>③ 주소</li>
											<li>④ 전화번호 및 이동전화번호</li>
											<li>⑤ 희망 ID (회원의 경우)</li>
											<li>⑥ 비밀번호 (회원의 경우)</li>
											<li>⑦ E-mail(전자우편) 주소</li>
											<li>⑧ 기타 "회사"가 필요하다고 인정하는 사항</li>
										</ol>
									</li>
									<li>2. "회사"는 이용자의 개인 식별이 가능한 개인 정보를 수집하는 때에는 반드시 당해 이용자의 동의를 받습니다.</li>
									<li>3. 제공된 개인정보는 당해 이용자의 동의 없이 목적 외의 이용이나 제3자에게 제공할 수 없으며, 이에 대한 모든 책임은 "회사"가 집니다. 다만, 다음의 경우는 예외로 합니다.
										<ol>
											<li>① 배송 업무상 배송 업체에게 배송에 필요한 최소한의 이용자의 정보(성명, 주소, 전화번호)를 알려주는 경우</li>
											<li>② 정보통신서비스의 제공에 관한 계약의 이행을 위하여 필요한 개인정보로서 경제적, 기술적인 사유로 통상의 동의를 받는 것이 현저히 곤란한 경우</li>
											<li>③ 재화 등의 거래에 따른 대금 정산을 위하여 필요한 경우</li>
											<li>④ 도용 방지를 위하여 본인 확인에 필요한 경우</li>
											<li>⑤ 법률의 규정 또는 법률에 의하여 필요한 불가피한 사유가 있는 경우</li>
											<li>⑥ 신속한 이용문의 상담 및 이용자의 불만처리 업무를 대행하는 "회사"에 상담업무에 필요한 이용자의 정보를 제공하는 경우</li>
											<li>⑦ 회원가입 시 동의하신 제휴사별 제휴 업무 진행을 위한 필요로 하는 본인확인을 위한 최소한의 정보(성명, 성별, 생년월일, 주문상품평)를 제휴사에게 제공하는 경우</li>
										</ol>
									</li>
									<li>4. "회사"가 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보관리 책임자의 신원(소속, 성명 및 전화번호, 기타 연락처), 정보의 수집 목적 및 이용 목적, 제3자에 대한 정보 제공 관련 사항(제공 받은자, 제공 목적 및 제공할 정보의 내용) 등 정보통신망이용촉진등에관한법률 제22조 등에서 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.</li>
									<li>5. 이용자는 언제든지 "회사"가 가지고 있는 자신의 개인 정보에 대해 열람 및 오류 정정을 요구할 수 있으며 "회사"는 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 "회사"는 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.</li>
									<li>6. "회사"는 개인정보 보호를 위하여 관리자를 한정하여 그 수를 최소화 하며 신용카드, 은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난, 유출, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.</li>
									<li>7. "회사" 또는 그로부터 개인 정보를 제공받는 제3자는 개인정보의 수집 목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이 파기합니다.</li>
									<li>8. "회사"가 회원의 개인정보를 수집, 이용, 제공 등을 할 경우에는 정보통신망 이용촉진 및 정보보호등에 관한 법률에 따라 회원의 동의를 받습니다.</li>
									<li>9. 회원은 원하는 경우 언제든 "회사"에 제공한 개인정보의 수집과 이용에 대한 동의를 철회할 수 있으며 동의의 철회는 회원 탈퇴를 하는 것으로 이루어 집니다.</li>
								</ol>
								<p>* 개인정보와 관련된 보다 구체적인 사항은 개인정보취급방침을 따릅니다.</p>
							</dd>
						</dl>
						<dl>
							<dt>제 18조 ("회사"의 의무)</dt>
							<dd>
								<ol>
									<li>1. "회사"는 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 상품 또는 용역을 제공하는데 최선을 다합니다.</li>
									<li>2. "회사"는 이용자가 안전하게 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을 갖추어야 합니다.</li>
									<li>3. "회사"는 판매하는 상품이나 용역에 대하여 「표시·광고의공정화에관한법률」 제3조 의 규정에 위반하는 표시·광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 부담합니다.</li>
									<li>4. "회사"는 수신거절의 의사를 명백히 표시한 이용자에 대해서는 영리목적의 광고성 이메일을 발송하지 않습니다.</li>
								</ol>
							</dd>
						</dl>
						<dl>
							<dt>제 19조 (회원의 ID 및 비밀번호에 대한 의무)</dt>
							<dd>
								<ol>
									<li>1. 제18조의 경우를 제외하고, 회원의 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.</li>
									<li>2. 회원은 자신의 ID 및 비밀번호를 제3자가 이용하게 해서는 안됩니다.</li>
									<li>3. 회원이 자신의 ID 및 비밀번호를 도난 당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 "회사"에 통보하고 "회사"의 안내가 있는 경우에는 그에 따라야 합니다.</li>
									<li>4. "회사"는 회원이 상기 제1항, 제2항, 제3항을 위반하여 회원에게 발생한 손해에 대하여 아무런 책임을 부담하지 않습니다.</li>
								</ol>
							</dd>
						</dl>
						<dl>
							<dt>제 20조 (이용자의 의무)</dt>
							<dd>
								이용자는 다음 행위를 하여서는 안됩니다.
								<ol>
									<li>1. 개인정보의 등록(변경의 경우를 포함함)시 허위내용을 등록</li>
									<li>2. "회사"에 게시된 정보를 임의로 변경</li>
									<li>3. "회사"가 허락하지 않은 정보(컴퓨터 프로그램 등)의 송신 또는 게시</li>
									<li>4. "회사" 기타 제3자의 저작권 등 지적재산권에 대한 침해</li>
									<li>5. "회사" 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위</li>
									<li>6. 외설 또는 폭력적인 메시지·화상·음성 기타 공서양속에 반하는 정보를 화면에 공개 또는 게시하는 행위</li>
								</ol>
							</dd>
						</dl>

						<p class="tit">제 6장 부가서비스의 이용</p>
						<dl>
							<dt>제 21조 (마일리지)</dt>
							<dd>
								<ol>
									<li>1. "회사"는 회원이 상품을 구매하거나, 상품 후기를 작성하는 등의 경우 회원에게 일정한 마일리지를 부여할 수 있습니다. 그 구체적인 운영방법은 "회사"의 운영정책에 의합니다.</li>
									<li>2. 마일리지는 상품 구매시 사용가능 기준 하에 현금가액과 동일하게 사용할 수 있으나 (단 사용불가 사전고지품목 제외), 현금으로 환불되지는 않습니다. 또한, 마일리지 서비스는 회원에게만 제공되며 타인에게 양도할 수 없습니다.</li>
									<li>3. 부여된 마일리지는 5년간 유효하며, 기한내 사용하지 않은 마일리지는 소멸됩니다.</li>
									<li>4. 회원을 탈퇴한 경우 마일리지는 소멸됩니다.</li>
									<li>5. 부정한 방법으로 포인트를 획득한 사실이 확인될 경우 "회사"는 회원의 포인트 회수, ID(고유번호) 삭제 및 형사 고발 등 기타 조치를 취할 수 있습니다.</li>
								</ol>
							</dd>
						</dl>
						<dl>
							<dt>제 22조 (예치금)</dt>
							<dd>
								<ol>
									<li>1. "회사"에서 구입한 상품을 반품 또는 취소하였을 때 회원이 원할 경구 환불 금액을 예치금으로 환불 받을 수 있습니다.</li>
									<li>2. 예치금은 해당금액을 차후 상품 구매시 현금처럼 사용 할 수 있으며 회원이 원하는 경우 현금으로 돌려받으실 수 있습니다.</li>
									<li>3. 예치금은 사용 유효기간이 없으며 최소 구매 금액 제한없이 사용 가능합니다.</li>
								</ol>
							</dd>
						</dl>
						<dl>
							<dt>제 23조 (Gift카드)</dt>
							<dd>
								<ol>
									<li>1. 주차팍팍 Gift카드는 "회사"에서 발행한 무기명 선불카드로 일정 금액만큼 사용하실 수 있는 카드로 "회사"가 정한 소정의 방법에 의해 구매하실 수 있습니다. 지정하는 공식 판매처에서만 구매하실 수 있으며 이외의 곳에서 구매 하실 경우 어떠한 책임도 부담하지 않습니다.</li>
									<li>2. 온라인에서 물품이나 용역을 구매하기 위해서는 "회사"가 정한 방법에 따라 해당 Gift카드를 인터넷사용 등록해야 합니다.</li>
									<li>3. Gift카드 권면 금액이 1만원 초과일 경우 100분의 60 사용시, 1만원 이하일 경우 100분의 80 이상 사용시에는 주차팍팍 온라인에서는 예치금으로 전환 받을 수 있으며 이 조건을 충족하지 못할 경우에는 잔액 환급이 되지 않습니다.</li>
									<li>4. Gift카드의 유효기한은 5년이고, 유효기한이 경과된 Gif 카드는 사용하실 수 없습니다.</li>
								</ol>
								<p>* Gift카드와 관련된 보다 구체적인 사항은 Gift카드이용약관을 따릅니다.</p>
							</dd>
						</dl>
						<dl>
							<dt>제 24조 (상품쿠폰)</dt>
							<dd>
								<ol>
									<li>1. "회사"는 구매서비스를 이용하는 회원에게 지정된 상품 구매 시 일정액 또는 일정비율을 할인 받을 수 있는 상품쿠폰을 발급할 수 있습니다.</li>
									<li>2. 회원은 상품쿠폰을 회원 본인의 구매에 한해서만 사용할 수 있으며, 어떠한 경우에도 이를 타인에게 실질적으로 매매 또는 양도할 수 없습니다.</li>
									<li>3. 상품쿠폰은 일부 품목이나 금액에 따라 사용이 제한될 수 있으며, 유효기간이 지난 후에는 사용할 수 없습니다.</li>
									<li>4. 회원을 탈퇴한 경우 상품쿠폰은 소멸됩니다.</li>
								</ol>
							</dd>
						</dl>
						<dl>
							<dt>제 25조 (보너스쿠폰)</dt>
							<dd>
								<ol>
									<li>1. "회사"는 구매서비스를 이용하는 회원에게 상품 구매 시(단 사용불가 사전고지품목 제외) 일정액 또는 일정비율을 할인 받을 수 있는 보너스쿠폰을 발급할 수 있습니다.</li>
									<li>2. 회원은 보너스쿠폰을 회원 본인의 구매에 한해서만 사용할 수 있으며, 어떠한 경우에도 이를 타인에게 실질적으로 매매 또는 양도할 수 없습니다.</li>
									<li>3. 보너스쿠폰은 일부 품목이나 금액에 따라 사용이 제한될 수 있으며, 유효기간이 지난 후에는 사용할 수 없습니다.</li>
									<li>4. 회원을 탈퇴한 경우 보너스쿠폰은 소멸됩니다.</li>
								</ol>
							</dd>
						</dl>

						<p class="tit">제 7장 기타</p>
						<dl>
							<dt>제 26조 (저작권의 귀속 및 게시물 이용 제한)</dt>
							<dd>
								<ol>
									<li>1. "회사"가 작성한 저작물에 대한 저작권 기타 지적 재산권은 "회사"에 귀속합니다.</li>
									<li>2. 이용자는 서비스를 이용함으로써 얻은 정보를 "회사"의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.</li>
									<li>3. "회사"는 약정에 따라 이용자에게 귀속된 저작권을 사용하는 경우 당해 이용자에게 통보하여야 합니다.</li>
									<li>4. 회사는 회원이 서비스 내에 게시한 게시물이 타인의 저작권, 프로그램저작권 등을 침해하였음을 이유로 "회사"가 타인으로부터 손해배상청구 등 이의 제기를 받은 경우 회원은 "회사"의 면책을 위하여 노력하여야 하며, "회사"가 면책되지 못한 경우 회원은 그로 인해 "회사"에 발생한 모든 손해를 부담하여야 합니다.</li>
									<li>5. "회사"는 회원이 서비스 내에 게시한 게시물(회원간 전달 포함)이 다음 각 호의 경우에 해당한다고 판단되는 경우 사전통지 없이 삭제, 변경할 수 있으며, 이에 대해 "회사"는 어떠한 책임도 지지 않습니다.
										<ol>
											<li>① 스팸(spam)성 게시물 및 상업성 게시물 (예: 행운의 편지, 특정사이트 광고 등)</li>
											<li>② 타인을 비방할 목적으로 허위 사실을 유포하여 타인의 명예를 훼손하는 글</li>
											<li>③ 동의 없는 타인의 신상공개, 제3자의 저작권 등 권리를 침해하는 내용, 기타 게시판 주제와 다른 내용의 게시물</li>
											<li>④ 기타 관계 법령 및 "회사"의 지침 등에 위반된다고 판단되는 경우</li>
										</ol>
									</li>
								</ol>
							</dd>
						</dl>
						<dl>
							<dt>제 27조 (면책)</dt>
							<dd>
								<ol>
									<li>1. "회사"는 천재지변, 불가항력 기타 "회사"의 합리적인 통제범위를 벗어난 사유로 인하여 서비스를 제공할 수 없는 경우에는 그에 대한 책임을 부담하지 않습니다.</li>
									<li>2. "회사"는 이용자의 귀책사유로 인하여 서비스를 제공할 수 없는 경우에는 그에 대한 책임을 부담하지 않습니다.</li>
									<li>3. "회사"는 이용자가 서비스를 이용함으로써 기대되는 수익을 얻지 못하거나 서비스를 통해 얻은 자료를 이용하여 발생한 손해에 대해서는 책임을 부담하지 않습니다.</li>
									<li>4. 이용자가 화면에 게재한 정보, 자료, 사실 등의 내용에 관한 신뢰도 또는 정확성에 대하여는 해당 이용자가 책임을 부담하며, "회사"는 내용의 부정확 또는 허위로 인해 이용자 또는 제3자에게 발생한 손해에 대하여는 아무런 책임을 부담하지 않습니다.</li>
									<li>5. "회사"는 서비스 이용과 관련하여 이용자의 고의 또는 과실로 인하여 이용자 또는 제3자에게 발생한 손해에 대하여는 아무런 책임을 부담하지 않습니다.</li>
								</ol>
							</dd>
						</dl>
						<dl>
							<dt>제 28조 (사이트의 연결)</dt>
							<dd>
								<ol>
									<li>1. 타 사이트에 하이퍼링크(하이퍼링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등에 의해 연결시킬 수 있습니다.</li>
									<li>2. "회사"는 이용자가 해당 연결사이트와 독자적으로 상품 또는 용역을 거래한 행위에 대해서는 아무런 책임을 부담하지 않습니다.</li>
								</ol>
							</dd>
						</dl>
						<dl>
							<dt>제 29조 (정보의 제공 및 광고의 게재)</dt>
							<dd>
								<ol>
									<li>1. "회사"는 서비스를 운영함에 있어 각종 정보를 서비스 화면에 게재하거나 e-mail 및 서신우편 등의 방법으로 회원에게 제공할 수 있습니다.</li>
									<li>2. "회사"는 서비스의 운영과 관련하여 홈페이지, 서비스 화면, SMS, e-mail등에 광고 등을 게재할 수 있습니다.</li>
									<li>3. 회원이 서비스상에 게재되어 있는 광고를 이용하거나 서비스를 통한 광고주의 판촉활동에 참여하는 등의 방법으로 교신 또는 거래를 하는 것은 전적으로 회원과 광고주 간의 문제입니다. 만약 회원과 광고주간에 문제가 발생할 경우에도 회원과 광고주가 직접 해결하여야 하며, 이와 관련하여 "회사"는 어떠한 책임도 지지 않습니다.</li>
								</ol>
							</dd>
						</dl>
						<dl>
							<dt>제 30조 (분쟁해결)</dt>
							<dd>
								<ol>
									<li>1. "회사"는 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구인 고객행복센터를 설치·운영합니다.</li>
									<li>2. "회사"는 이용자로부터 제출되는 불만사항 및 의견을 우선적으로 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보합니다.</li>
									<li>3. "회사"와 이용자간에 발생한 전자상거래 분쟁과 관련하여 이용자의 피해구제신청이 있는 경우에는 공정거래위원회 또는 시.도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수 있습니다.</li>
								</ol>
							</dd>
						</dl>
						<dl>
							<dt>제 31조 (재판권 및 준거법)</dt>
							<dd>
								<ol>
									<li>1. "회사"와 이용자간에 발생한 전자상거래 분쟁에 관한 소송은 제소 당시의 이용자의 주소에 의하고, 주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는 민사소송법상의 관할법원에 제기합니다.</li>
									<li>2. "회사"와 이용자간에 제기된 전자상거래 소송에는 대한민국법을 적용합니다.</li>
								</ol>
							</dd>
						</dl>
						<p>(부칙) 2012년 08월 21일부터 시행합니다. (2012.08.21 개정)</p>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" style="background-color: #1BA4E7; border:0px;">Close</button>

      </div>
    </div>
  </div>
</div> 

<!-- 개인정보에 대한 modal -->
<div class="modal fade" id="agreeagreePrivateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document" style="margin-top: 122px;">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel"><span class="glyphicon glyphicon-ok-sign"></span>개인정보 수집 및 이용동의</h4>
      </div>
      <div class="modal-body">
       <h4 class="bPad10">수집하는 개인정보 항목 및 수집방법</h4>
						<p>1. 수집하는 개인정보의 항목</p>
						<ul>
							<li>
								① 회사는 회원가입시 중복가입 확인, 원할한 고객상담, 각종 서비스의 제공을 위해 아래와 같은 최소한의 개인정보를 필수항목을 수집하고 있습니다.
								<p>- 아이디, 비밀번호, 이름, 성별, 생년월일, 이메일주소, 휴대폰번호, 가입인증정보</p>
							</li>
							<li>② 서비스 이용과정이나 사업 처리과정에서 아래와 같은 정보들이 생성되어 수집될 수 있습니다.
								<ul>
									<li>- 최근접속일, 접속 IP 정보, 쿠키, 구매로그, 이벤트로그</li>
									<li>- 물품 주문시 : 이메일주소, 전화번호, 휴대폰번호, 주소</li>
									<li>- 물품(서비스)구매에 대한 결제 및 환불시 : 은행계좌정보</li>
									<li>- 개인맞춤서비스 이용시 : 주소록, 기념일</li>
								</ul>
							</li>
						</ul>
						<p>2. 개인정보 수집방법<br />회사는 다음과 같은 방법으로 개인정보를 수집합니다.</p>
						<ol>
							<li>① 홈페이지, 서면양식, 팩스, 전화, 상담 게시판, 이메일, 이벤트 응모, 배송요청</li>
							<li>② 협력회사로부터의 제공</li>
							<li>③ 로그 분석 프로그램을 통한 생성정보 수집</li>
						</ol>
						<p>3. 개인정보 수집에 대한 동의</p>
						<p>회사는 귀하께서 주차팍팍의 개인정보취급방침 및 이용약관의 내용에 대해 「동의한다」버튼 또는 「동의하지 않는다」버튼을 클릭할 수 있는 절차를 마련하여, 「동의한다」버튼을 클릭하면 개인정보 수집에 대해 동의한 것으로 봅니다. 「동의안함」을 선택하실 경우, 회사가 제공하는 기본서비스 제공이 제한됩니다.</p>
						<p>4. 14세 미만 아동의 개인정보보호</p>
						<p>회사는 법정 대리인의 동의가 필요한 만14세 미만 아동의 회원가입은 받고 있지 않습니다.</p>
						<p>5. 비회원의 개인정보보호</p>
						<ol>
							<li>① 회사는 비회원 주문의 경우에도 배송, 대금결제, 주문내역 조회 및 구매확인을 위하여 필요한 개인정보만을 요청하고 있으며, 이 경우 그 정보는 대금결제 및 상품의 배송에 관련된 용도 이외에는 다른 어떠한 용도로도 사용되지 않습니다.</li>
							<li>② 회사는 비회원의 개인정보도 회원과 동등한 수준으로 보호합니다.</li>
						</ol>

						<h4 class="bPad10 tPad30">개인정보의 수집목적 및 이용 목적</h4>
						<ul>
							<li>① 회원제 서비스 이용에 따른 본인 식별 절차에 이용</li>
							<li>② 고지사항 전달, 본인 의사 확인, 불만 처리 등 원활한 의사소통 경로의 확보, 새로운 서비스, 신상품이나 이벤트 정보 등 최신 정보의 안내</li>
							<li>③ 쇼핑 물품 배송에 대한 정확한 배송지의 확보</li>
							<li>④ 개인맞춤 서비스를 제공하기 위한 자료</li>
							<li>⑤ 경품 수령 및 세무신고를 위한 별도의 개인정보 요청</li>
						</ul>

						<h4 class="bPad10 tPad30">개인정보의 보유, 이용기간</h4>
						<p>1. 귀하의 개인정보는 회사가 신청인에게 서비스를 제공하는 기간 동안에 한하여 보유하고 이를 활용합니다. 다만 다른 법률에 특별한 규정이 있는 경우에는 관계법령에 따라 보관합니다. </p>
						<div class="boardList tPad20 bPad10">
							<table>
							<caption>개인정보의 보유, 이용기간</caption>
							<colgroup>
							<col width="50%" /> <col width="50%" />
							</colgroup>
							<thead>
							<tr>
								<th scope="col">개인정보</th>
								<th scope="col">파기시점</th>
							</tr>
							</thead>
							<tbody>
							<tr>
							<td>회원가입정보</td>
							<td>회원가입을 탈퇴하거나 회원에 제명된 때</td>
							</tr>
							<tr>
							<td>대금지급정보</td>
							<td>대금의 완제일 또는 채권소명시효기간이 만료된 때</td>
							</tr>
							<tr>
							<td>배송정보</td>
							<td>물품 또는 서비스가 인도되거나 제공된 때</td>
							</tr>
							<tr>
							<td>설문조사, 이벤트 등 일시적 목적을 위하여 수집한 경우</td>
							<td>당해 설문조사, 이벤트 등이 종료한 때</td>
							</tr>
							</tbody>
							</table>
						</div>
						<p>2. 위 개인정보 수집목적 달성시 즉시파기 원칙에도 불구하고 다음과 같이 거래 관련 권리 의무 관계의 확인 등을 이유로 일정기간 보유하여야 할 필요가 있을 경우에는 전자상거래 등에서의 소비자보호에 관한 법률 등에 근거하여 일정기간 보유합니다.</p>
						<ul>
							<li>① 「전자상거래 등에서의 소비자보호에 관한 법률」에 의한 보관
								<ul>
									<li>- 계약 또는 청약철회 등에 관한 기록 : 5년</li>
									<li>- 대금결제 및 재화 등의 공급에 관한 기록 : 5년</li>
									<li>- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년</li>
								</ul>
							</li>
							<li>② 「통신비밀보호법」 시행령 제41조에 의한 통신사실확인자료 보관
								<p>- 컴퓨터통신, 인터넷 로그기록자료, 접속지 추적자료 : 3개월</p>
							</li>
							<li>③ 설문조사, 이벤트 등 일시적 목적을 위하여 수집한 경우 : 당해 설문조사, 이벤트 등의 종료 시점</li>
						</ul>
	</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" style="background-color: #1BA4E7; border:0px;" >Close</button>
      </div>
    </div>
  </div>
</div>

</body>

</html>
    