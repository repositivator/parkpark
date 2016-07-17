<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript">
function adminEvalUpdateCheck(){
	document.adminEvalUpdateForm.submit();
}
</script>
<title>Insert title here</title>
</head>
<body>
<form name="adminEvalUpdateForm" action="adminEvalUpdate">
	<input type="hidden" name="code" value="${adminevalUpdate.code}">
	<table>
		<tr><th>${adminevalUpdate.code}. 작성자 코드 : ${adminevalUpdate.m_code}</th>
			<th>별 점 : <input type="text" name="e_score" value="${adminevalUpdate.e_score}"></th>
		</tr> 
		<tr>	
		 	<td>내 용 : <input type="text" name="e_content" value="${adminevalUpdate.e_content}"></td>
		</tr>
		<tr>
			<td>
				<input type="button" value="정보수정" id="btnSubmit" onclick="adminEvalUpdateCheck()"class="btn btn-primary"  style="background-color: #1BA4E7; border:0px;">
			</td>
		</tr>
	</table>
</form>
</body>
</html>