<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" /> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 <!-- jquery -->
    <script type="text/javascript" src="${path}/resources/js/jquery-1.12.0.min.js"></script>
<script src="${path}/resources/js/Myreview.js"></script>
<title>주차팍팍 - 주차, 이제 팍!팍! 빠르게 해버리자</title>
</head>



<jsp:include page="../include_top.jsp" />


<body>
<h3 style="text-shadow: 0 1px 2px rgba(255,255,255,.15);font-size: 50px;font-weight: bold;margin-top: 20px;margin-left: 20%;margin-bottom: 20px;">작성 글 보기</h3>

<!-- 수정하기 버튼의 form -->
<form name="reviewUpdateForm" id="reviewUpdateForm" method="post" action="myReviewUpdate">
	<input type="hidden" name="code">
	<input type="hidden" name="m_email" value="${emailKey}">
</form>
<!-- 삭제하기 버튼의 form -->
<form name="reviewDeleteForm" id="reviewDeleteForm" method="post" action="myReviewDelete">
	<input type="hidden" name="code">
	<input type="hidden" name="m_point" value="${m_point}">
	<input type="hidden" name="emailKey" value="${emailKey}">
	<input type="hidden" name="m_email" value="${emailKey}">
</form>

<center>
<div style="width:60%;font-size: 15px; margin-top:70px; margin-bottom:70px;">
<table class="table table-striped table-hover">
<c:forEach var="s" items="${myreviewlist}">
 	<tr><td><%-- ${s.code}. --%> ${s.s_code}번 주차장</td><td>${s.e_date}</td><td>점수 : <b>${s.e_score}</b>점</td>
 		<td style="width: 18%;padding-left: 42px">
 			<input type="button" onclick="reviewUpdate(${s.code})" id="s_codeId${s.code}" name="reviewUpdate" value="수정" class="btn btn-primary"  style="background-color: #1BA4E7; border:0px;">
 			<input type="button" onclick="reviewDelete(${s.code})" id="s_codeid${s.code}" name="reviewDelete" value="삭제" class="btn btn-danger" style="border:0px;"></td>
 		</tr>
	<tr>
		<td colspan="4" style="padding-top: 30px; padding-bottom:30px;">${s.e_content}</td>
	</tr>
</c:forEach>

</table> 
</div>
</center>
<jsp:include page="../include_bottom.jsp" />


</html>