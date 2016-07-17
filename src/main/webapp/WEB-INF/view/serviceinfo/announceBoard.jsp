<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" /> 


<jsp:include page="../include_top.jsp" />
<script src="${path}/resources/js/announceBoard.js"></script>
<form id="commonForm" name="commonForm"></form>
<!-- <div style="margin-top: 5%;padding-top: 15px;padding-bottom: 40px;">
본문과 Footer 사이를 띄우기 위한 div
</div> -->



<%-- 
<h2>공지사항</h2>
<table class="table table-striped" width="80%">
			<tr><th>글번호</th><th>제목</th><th>등록일</th></tr>
			<c:forEach var="s" items="${noticeboardlist}">
				<tr>
					<td class=cr6aa7cc>${s.code}</td>
					<td>${s.nb_title}</td>
					<td>${s.nb_date}</td>					
				</tr>
			</c:forEach>
		</table>
 --%>
 
 
<h3 style="text-shadow: 0 1px 2px rgba(255,255,255,.15);font-size: 50px;font-weight: bold;margin-top: 20px;margin-left: 20%;margin-bottom: 20px;">공지사항</h3>


<center>
	<div style="width:60%; font-size: 20px; margin-top:70px; margin-bottom:70px;">
	
		<table class="table table-hover">
		
			<tr class="info" style="text-align:center; font-weight: bold;"><td>글번호</td><td>제목</td><td>작성일</td></tr>
			
			<c:forEach var="s" items="${noticeboardlist}">
			<tr>
				<td style="text-align: center;">${s.code}</td>
				<td style="font-weight: bold;"><a href="#this" name="nb_title" style="text-decoration:none">${s.nb_title}</a>
					<input type="hidden" id="code" value="${s.code}">
				</td>
				<td style="text-align: center;">${s.nb_date}</td>
			</tr>
			</c:forEach>
			
		</table>
	
			<!-- detail화면으로 보내기 위한 jquery -->
		<script type="text/javascript">
	        $(document).ready(function(){
	            $("a[name='nb_title']").on("click", function(e){ //제목 
	                e.preventDefault();
	                fn_openBoardDetail($(this));
	            });
	        });
	         
	        function fn_openBoardDetail(obj){
	            var comSubmit = new ComSubmit();
	            comSubmit.setUrl("<c:url value='/serviceinfo/announceBoardDetail'/>");
	            comSubmit.addParam("code", obj.parent().find("#code").val());
	            comSubmit.submit();
	        }
 		</script> 

	</div>
</center>


<jsp:include page="../include_bottom.jsp" />

