<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript">
function AdminMemberUpdateCheck(){
	document.adminMemberUpdateForm.submit();
}
</script>
<title>Insert title here</title>
</head>
<body>
<form name="adminMemberUpdateForm" action="adminMemberUpdate">
	<input type="hidden" name="code" value="${adminMemberUpdate.code}">
	<table>
		<tr><th>${adminMemberUpdate.code}. ${adminMemberUpdate.m_email}</th>
			<th>이 름 : <input type="text" name="m_name" value="${adminMemberUpdate.m_name}"></th>
		</tr> 
		<tr>	
			<td>가입일 : ${adminMemberUpdate.m_date}</td>
		 	<td>포인트 : <input type="text" name="m_point" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' value="${adminMemberUpdate.m_point}"></td>
		</tr>
		<tr>
			<td>
				<input type="button" value="정보수정" id="btnSubmit" onclick="AdminMemberUpdateCheck()"class="btn btn-primary"  style="background-color: #1BA4E7; border:0px;">
			</td>
		</tr>
	</table>
</form>
</body>
</html>