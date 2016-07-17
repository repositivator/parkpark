<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<title>Insert title here</title>
<script type="text/javascript">
function adminReservationUpdateCheck(){
	document.adminReservationUpdateForm.submit();
}
</script>
</head>
<body>
<form name="adminReservationUpdateForm" action="adminReservationUpdate">
<input type="hidden" name="code" value="${adminReservationUpdate.code}">
<table>
	<tr>
		<th>예약일 : <input type="text" name="r_date" value="${adminReservationUpdate.r_date}"></th>
	</tr> 
	<tr>	
	 	<td>예약시작시간 : <input type="text" name="r_begin_time" value="${adminReservationUpdate.r_begin_time}"></td>
	 	<td>예약종료시간 : <input type="text" name="r_end_time" value="${adminReservationUpdate.r_end_time}"></td>
	</tr>
	<tr>
		<td>
			<input type="button" value="정보수정" id="btnSubmit" onclick="adminReservationUpdateCheck()"class="btn btn-primary"  style="background-color: #1BA4E7; border:0px;">
		</td>
	</tr>
</table>
</form>
</body>
</html>