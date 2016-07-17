<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript">
function adminparkingUpdateCheck(){
	document.adminparkingUpdateForm.submit();
}
</script>
<title>Insert title here</title>
</head>
<body>
<form name="adminparkingUpdateForm" action="adminparkingUpdate">
	<input type="hidden" name="code" value="${adminparkingUpdate.code}">
	<table>
		<tr><th>${adminparkingUpdate.code}. ${adminparkingUpdate.s_address}</th>
		</tr> 
		 <tr>
           <td>월~금요일</td>
           <td>시작시간</td>
           <td>
           		<input type="text" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' style='ime-mode:disabled;' name="weekday_begin_time" size="15" maxlength="50" value="${adminparkingUpdate.weekday_begin_time}"/>시</td>
           <td>종료시간</td>
           <td>
           		<input type="text" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' style='ime-mode:disabled;' name="weekday_end_time" value="${adminparkingUpdate.weekday_end_time}"/>시</td>
        </tr>        
        <tr>
          <td>토요일</td>
          <td>시작시간</td>
          <td>
          		<input type="text" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' style='ime-mode:disabled;' name="saturday_begin_time" size="15" maxlength="50" value="${adminparkingUpdate.saturday_begin_time}"/>시</td>
          <td>종료시간</td>
          <td>
          		<input type="text" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' style='ime-mode:disabled;' name="saturday_end_time" value="${adminparkingUpdate.saturday_end_time}"/>시</td>
        </tr>
        <tr>
           <td>일요일/공휴일</td>
           <td>시작시간</td>
           <td>
           		<input type="text" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' style='ime-mode:disabled;' name="holiday_begin_time" size="15" maxlength="50" value="${adminparkingUpdate.holiday_begin_time}"/>시</td>
           <td>종료시간</td>
           <td>
           		<input type="text" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' style='ime-mode:disabled;' name="holiday_end_time" value="${adminparkingUpdate.holiday_end_time}"/>시</td>
        </tr>
		<tr>
			<td>
				<input type="button" value="정보수정" id="btnSubmit" onclick="adminparkingUpdateCheck()"class="btn btn-primary"  style="background-color: #1BA4E7; border:0px;">
			</td>
		</tr>
	</table>
</form>
</body>
</html>