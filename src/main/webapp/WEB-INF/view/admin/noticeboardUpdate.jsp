<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<title>Insert title here</title>
<script type="text/javascript">
function AadminnoticeBoardUpdateCheck(){
	document.adminnoticeBoardUpdateForm.submit();
}
</script>
</head>
<body>
<form name="adminnoticeBoardUpdateForm" action="adminnoticeBoardUpdate">
	<input type="hidden" name="code" value="${noticeboardUpdate.code}">
	<table>
		<tr>
			<th>제 목 : <input type="text" name="nb_title" value="${noticeboardUpdate.nb_title}"></th>
		</tr> 
		<tr>	
		 	<td>내용 : <textarea name="nb_content" rows="10" cols="100">${noticeboardUpdate.nb_content}</textarea></td>
		</tr>
		<tr>
			<td>
				<input type="button" value="정보수정" id="btnSubmit" onclick="AadminnoticeBoardUpdateCheck()"class="btn btn-primary"  style="background-color: #1BA4E7; border:0px;">
			</td>
		</tr>
	</table>
</form>
</body>
</html>