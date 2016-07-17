<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script type="text/javascript">
function main(){
	history.back(-1);
}

function noticeinsert(){
		if(noticeForm.nb_title.value===""){
			alert("제목을 입력해주세요.");
			noticeForm.nb_title.focus();
			return;
		}
		if(noticeForm.nb_content.value===""){
			alert("내용을 입력해주세요.");
			noticeForm.nb_content.focus();
			return;
		}	
		document.noticeForm.submit();		
	}


</script>
</head>
<body>
<form name="noticeForm" action="noticeinsert">
	<table align="center">
	<tr>
		<td> 제목 </td>
		<td>
			<input type="text" name="nb_title">
		</td>
	</tr>
	<tr>
		<td> 내용 </td>
		<td style="margin-top:10px; ">
			<textarea name="nb_content" rows="10" cols="100"></textarea>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="button" id="noticesubmit" value="공지사항입력" onclick="noticeinsert()" class="btn btn-primary"  style="background-color: #1BA4E7; border:0px;">
			<input type="button" onclick="main()" value="돌아가기" class="btn btn-default">
		</td>
	</tr>
	</table>
</form>
</body>
</html>