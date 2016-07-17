<!DOCTYPE html>
 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 
<html>
<head>
<meta charset="utf-8">
<script type="text/javascript">
    window.onload = function() {
        location.href='start';
    }
</script>
<title>Welcome</title>
</head>
<body>
</body>
</html>


<%-- <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주차팍팍 - 주차, 이제 팍!팍! 빠르게 해버리자</title>
<script type="text/javascript" src="${path}/resources/js/jquery-1.12.0.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="${path}/resources/js/index.js"></script>

</head> 
<body>
<%
String emailsession = (String)session.getAttribute("emailKey"); 

String update = "";
String login = "";

	if(emailsession!=null){
		update = "<a href='#' id='modify' style='color:#9d9d9d;' data-toggle='modal' data-target='#pwdModal'><span class='glyphicon glyphicon-cog'></span> 내 정보 수정</a>";
		login = "<a href='member/logout'>로그아웃</a>";
	}else{
		login = "<a href='member/login'>로그인</a>";
	}
%>

<!-- 회원정보 수정 전 비밀번호 확인 modal -->
<div class="modal fade" id="pwdModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
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
 				<input type="hidden" name="m_email" id="m_email" size="15" value="${emailKey}"/>
                <input type="password" name="m_passwd" id="m_passwd" class="form-control" placeholder="Password" autofocus>
             	<span class="cr6aa7cc lPad10" id="checkPwd"></span>
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
<a href="parkinglot/map_search">지도검색</a>
<a href="member/membership">회원가입</a>
<a href="parkinglot/registration">주차장 등록</a>
<a href="parkinglot/myParkingList">주차장 목록</a>
<a href="member/review">후기등록</a>
<br/>session : ${emailKey}님 반가워요<br/>
		<%=update%>
		<%=login%>
</body>
</html> --%>
