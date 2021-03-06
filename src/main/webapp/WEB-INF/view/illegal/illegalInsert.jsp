<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:set var="path" value="${pageContext.request.contextPath }" /> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주차팍팍 - 주차, 이제 팍!팍! 빠르게 해버리자</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script type="text/javascript" src="${path}/resources/js/jquery-1.12.0.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="${path}/resources/js/jquery.raty.js"></script>
<script type="text/javascript" src="${path}/resources/js/reviewInsert.js"></script>
<link href="${path}/resources/css/reviewInsert.css" rel="stylesheet" type="text/css">
<script src="${path}/resources/js/reviewInsert.js"></script>
</head>
<body>
<form name="reviewForm" method="post" action="reviewinsert">
<input type="hidden" name="m_code" value="${m_code}">
<input type="hidden" name="m_name" value="${m_name}">
<input type="hidden" name="s_code" value="${s_code}">

<table align="center">
	<tr align="center" style="color:#1BA4E7" >
		<td colspan="2" style="padding-top:20px;font-size: 50px;  float: left" > 주차장 후기</td>
	</tr>
	<tr align="center" style="color:#1BA4E7" >
		<td colspan="2" style="padding-top:20px;padding-bottom: 50px; font-size: 26px"> 후기를 등록하시면 사용가능한 적립금(2000원 상당)을 드립니다!</td>
	</tr>
	<tr align="center"><td> 주차장 주소 : ${s_address}</td>
	<td rowspan="2"><input type="hidden" id="e_score" name="e_score" value="3"/>
   	<div id="star" ></div>
    <script type="text/javascript">
        $(function() {
            $('div#star').raty({
                score: 3
                ,path : "${path}/resources/img"
                ,width : 200,
                click: function(score, evt) {
                    $("#e_score").val(score);
                } 
           });
        });
    </script>
    </td></tr>
   <tr align="center"><td> 주차장 이름 : ${s_name}</td></tr>
	
	<tr align="center">
		<td align="center" style="padding-bottom: 20px"><img src="../resources/img_share/${s_image}" style="width: 450px; height: 300px;" alt="주차장 이미지지롱"></td>	
	</tr>
	<tr align="center" style="color:#1BA4E7" >
		<td colspan="2" style="padding-top:20px;padding-bottom: 50px; font-size: 26px;float: left" >추가 설명</td>
	</tr>
	<tr align="center">
		<td colspan="2"><textarea name="e_content" cols="80%" rows="5" placeholder="후기를 입력해주세요."></textarea></td>
	</tr>
	<tr>
				<td colspan="2" align="center">
					<input type="button"
					value="후기등록" id="btnSubmit" class="btn btn-primary"  style="background-color: #1BA4E7; border:0px;">
					<input type="button" onclick="main()" value="돌아가기" class="btn btn-default">
				</td>

			</tr>
</table>
</form>

</body>
</html>