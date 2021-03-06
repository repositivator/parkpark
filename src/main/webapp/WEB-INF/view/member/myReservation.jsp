<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" /> <!-- 경로 별명 지정 -->
<%
String emailsession = (String)session.getAttribute("codeKey");
   if(emailsession==null || emailsession==""){ //로그인 상태가 아니면 로그인화면으로 이동
      PrintWriter writer=response.getWriter();
      writer.println("<script>alert('로그인 해주세요!'); location.href='../index.jsp';</script>");          
   }
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주차팍팍 - 주차, 이제 팍!팍! 빠르게 해버리자</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<%--  <link href="${path}/resources/css/test.css" rel="stylesheet" type="text/css"> --%>
  <!-- jquery -->
    <script type="text/javascript" src="${path}/resources/js/jquery-1.12.0.min.js"></script>
<script src="${path}/resources/js/review.js"></script>
</head>


<jsp:include page="../include_top.jsp" />


<body>


<h3 style="text-shadow: 0 1px 2px rgba(255,255,255,.15);font-size: 50px;font-weight: bold;margin-top: 20px;margin-left: 20%;margin-bottom: 20px;">내 예약 관리</h3>

	<!-- 예약 정보 수정을 위한 form -->
	<form name="reservationUpdateForm" method="post" action="../reservationUpdate">
	
	</form>
	<!-- 후기작성을 위한 form -->
	<form name="reviewForm" method="post" action="../reviewint">
		<input type="hidden" name="s_code">
		<input type="hidden" name="emailKey" value="${emailKey}">
	</form>
	<!-- 신고를 위한 form -->
	<form name="illegalForm" method="post" action="../illegal/illegalint">
		<input type="hidden" name="s_code">
		<input type="hidden" name="emailKey" value="${emailKey}">
	</form>
	
	
<center>
  <div style="width: 40%;  font-size: 15px; margin-top:70px; margin-bottom:70px;">
	<table class="table table-hover" >
		<c:forEach var="s" items="${reservationlist}">
			<tr>
				<td rowspan="4"  width="180px"><img src="../resources/img_share/${s.s_image}" style="width: 150px; height: 100px; margin-top: 5px" alt="">
				</td>
			</tr>
			<tr>
				<td colspan="5" style="text-align:center;"> <i class="fa fa-map-marker"style="font-size:15px;color:#38d3ff;"></i> ${s.s_name} ( ${s.s_address} ) </td>
			</tr>
			<tr>
				<td style="text-align:center;">
				<i class="fa fa-calendar" style="font-size:15px;color:#38d3ff;"></i>&nbsp;<b>${s.r_date}</b> 
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<i class="fa fa-clock-o" style="font-size:15px;color:#38d3ff;"></i>&nbsp;<b>${s.r_begin_time}시 ~ ${s.r_end_time}시</b>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				<i class="fa fa-usd" style="font-size:15px;color:#38d3ff;"></i>&nbsp;<b>${s.r_pay}원</b></td>
			
			</tr>
			<tr>
				<td colspan="5" style="text-align:center;">
					<input type="button" onclick="reservationUpdate(${s.code})" id="codeID${s.code}"name="reservationUpdate" value="예약 정보 수정" class="btn btn-primary"  style="background-color: #1BA4E7; border:0px;">
					<input type="button" onclick="reviewWrite(${s.s_code})" id="s_codeId${s.s_code}" name="reviewRegBtn" value="후기 작성" class="btn btn-primary"  style="background-color: #1BA4E7; border:0px;">
					
					<%-- <input type="button" onclick="illegalWrite(${s.s_code})" id="s_codeid${s.s_code}" name="illegalBtn" value="불법 주차 신고하기" class="btn btn-danger" style="border:0px;"> --%>
					
					<a href="http://localhost:8080/boots_parkpark/serviceinfo/personalContact" style="text-decoration:none;">
						<input type="button" <%-- onclick="illegalWrite(${s.s_code})" id="s_codeid${s.s_code}" --%> name="illegalBtn" value="불법 주차 신고" class="btn btn-danger" style="border:0px;">
					</a>
				</td>
			</tr>
		</c:forEach>
	</table>
  </div>
</center>
	
<jsp:include page="../include_bottom.jsp" />
</html>