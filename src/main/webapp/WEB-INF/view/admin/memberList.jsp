<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" /> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin-MemberList</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="${path}/resources/css/test.css" rel="stylesheet" type="text/css">
<script src="${path}/resources/js/memberList.js"></script>
<!-- jquery -->
<script type="text/javascript" src="${path}/resources/js/jquery-1.12.0.min.js"></script>
</head>
<body>
<h1>회원 목록</h1><br/>
<!-- 수정하기 버튼의 form -->
<form name="adminMemberUpdateForm" id="adminMemberUpdateForm" method="post" action="memberUpdate">
	<input type="hidden" name="code">
</form>

<!-- 삭제하기 버튼의 form -->
<form name="adminMemberDeleteForm" id="adminMemberDeleteForm" method="post" action="memberDelete">
	<input type="hidden" name="code">
</form>
<table class="table table-striped" width="80%">
			<tr><th>회원 코드</th><th>이름</th><th>이메일</th><th>비밀번호</th><th>가입일</th><th>포인트</th><th>회원관리</th></tr>
			<c:forEach var="s" items="${memberlist}">
				<tr>
					<td class=cr6aa7cc>${s.code}</td>
					<td>${s.m_name}</td>
					<td>${s.m_email}</td>
					<td>${s.m_passwd}</td>
					<td>${s.m_date }</td>
					<td>${s.m_point}</td>
					<td>
						<input type="button" onclick="adminMemberUpdate(${s.code})" id="codeId${s.code}" name="adminMemberUpdate" value="수정" class="btn btn-primary"  style="background-color: #1BA4E7; border:0px;">
 						<input type="button" onclick="adminMemberDelete(${s.code})" id="codeid${s.code}" name="adminMemberDelete" value="삭제" class="btn btn-danger" style="border:0px;">
 					</td>
				</tr>
			</c:forEach>
		</table>

</body>
</html>