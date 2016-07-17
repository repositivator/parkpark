<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" /> 

<jsp:include page="../include_top.jsp" />
<h3 style="text-shadow: 0 1px 2px rgba(255,255,255,.15);font-size: 50px;font-weight: bold;margin-top: 20px;margin-left: 20%;margin-bottom: 20px;">공지사항</h3>



<center>
	<div style="width:60%; font-size: 20px; margin-top:70px; margin-bottom:40px;">
		<table class="table">
					<tr style="font-weight:bold;">
						<td align="center" style="color:#38d3ff;">${noticeboarddetail.nb_title}</td>
						<td class=cr6aa6cc align="center" >${noticeboarddetail.nb_date}</td>
					</tr>
					<tr>
						<td colspan="2" style="padding-left: 200px; padding-right: 200px; padding-top:60px; padding-bottom:20px;">${noticeboarddetail.nb_content}</td>
					</tr>
		</table>
	</div>
	<div style="margin-bottom:20px;">
		<button type="submit" onclick="maingo()" class="btn btn-ar btn-success btn-lg btn-block" style="width: 200px;background-color: #38D3FF;background: #38D3FF;border: 1px solid #38D3FF;">목록보기</button>
	</div>
</center>

<div style="margin-bottom:5%;">
</div>

<jsp:include page="../include_bottom.jsp" />