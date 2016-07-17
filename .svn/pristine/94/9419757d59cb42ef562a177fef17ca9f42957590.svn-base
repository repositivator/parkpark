<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <c:set var="path" value="${pageContext.request.contextPath }" /> 
 
<%
String emailsession = (String)session.getAttribute("emailKey");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주차팍팍 - 주차, 이제 팍!팍! 빠르게 해버리자</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script type="text/javascript" src="${path}/resources/js/jquery-1.12.0.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>


<jsp:include page="../include_top.jsp" /> 



<body>


<h3 style="text-shadow: 0 1px 2px rgba(255,255,255,.15);font-size: 50px;font-weight: bold;margin-top: 20px;margin-left: 20%;margin-bottom: 20px;">예약 및 후기등록</h3>


<center>

    <div class="form-group" style="margin-top: 60px;">
        <i class="fa fa-map-marker"style="font-size:30px;color:#38d3ff;"></i>
       <!--  <label for="InputPName" style="font-size:20px;">주차장 이름</label><br> -->
        <label for="InputPName" style="font-size:20px; color:black; margin-left: 15px; margin-top: 10px;"  id="InputPName">${s_name}</label>
    <!-- </div>
    <div class="form-group" style="margin-top: 30px;">
        <label for="InputPName2" style="font-size:20px;">주차장 주소</label><br> -->
        <label for="InputPName2" style="font-size:20px; color:rgba(56, 211, 255, 0.68); margin-left: 15px; margin-top: 10px;" id="InputPName2">(${s_address})</label>
    </div>
	              
	<div class="col-md-12" style="margin-top: 5px;">
	        <img src="${path}/resources/img_share/${s_image}" style="width: 750px; height: 500px;" alt="주차장 이미지">
	</div>
		
	<div class="container">
	    <div class="row">
	    
			<div class="col-md-10" style="text-align: center;">
			  <ul class="services-header-list" style="margin-left: 190px;margin-top: -15px;margin-bottom: 30px;">
			     <li class="animated fadeInUp animation-delay-5" style="background-color: #38D3FF;">
			     	<a href="#">주차장 예약하기</a>
			     </li>
			  </ul>
			</div>
			            
	    </div>
	</div> 		
</center>
	              

<center>
  <div style="width: 60%" style="margin-top: 100px;">
  <h2 class="section-title" style="color:#38d3ff;">후기를 등록하시면 즉시 사용가능한 적립금<b>(2000원 상당)</b>을 드립니다!</h2>
  
	
		
		<div class="col-md-6">
	       <section>
		       
				<form name="reviewForm" method="post" action="reviewinsert">
				<input type="hidden" name="m_code" value="${m_code}">
				<input type="hidden" name="m_name" value="${m_name}">
				<input type="hidden" name="s_code" value="${s_code}">
				<input type="hidden" name="m_point" value="${m_point}">
				<input type="hidden" name="emailKey" value="${emailKey}">
				
	              
	              
	              <div class="form-group" style="margin-top: 60px; margin-bottom: 50px;">
	                  <label for="InputPName2" style="font-size:20px;">하나, 별점을 선택해주세요!</label><br>
		
	   					<!-- 별점 with [ jquery.raty.js ] -->
	                  	<div id="star" style="margin-top: 10px;"></div>
						<input type="hidden" id="e_score" name="e_score" value="3"/>
						
					     <script type="text/javascript">
					        $(function() {
					            $('div#star').raty({
					                score: 3
					                ,path : "http://localhost:8080/boots_parkpark/resources/img"
					                ,width : 200
					                ,click: function(score, evt) {
					                	$("#e_score").val(score);
					                }
					            });
					        });
					    </script>
	              </div>
	              
	              <div class="form-group" style="margin-top: 30px;">
	                  <label for="InputPName" style="font-size:20px;">둘, 자유롭게 후기를 들려주세요.</label><br>
	                  <textarea name="e_content" cols="40%" rows="5" placeholder="후기를 입력해주세요." style="margin-top: 10px;"></textarea>
	              </div>
	              
	              
	              <div class="form-group" style="margin-top: 30px;">
	              	<input type="button" value="후기등록" id="btnSubmit" onclick="reviewInsert('${emailKey}')" class="btn btn-primary" style="width: 200px;background-color: #38D3FF;background: #38D3FF;border: 1px solid #38D3FF;">
					<input type="button" onclick="maingo()" value="돌아가기" class="btn btn-default"
					style="background-color: white;background: white;border: 1px solid rgba(56, 211, 255, 0.68);">	
	              </div>
	              
	              
	              
	
	              <div class="clearfix"></div>
	
				</form>
	      	</section>
	   </div>
	   
	   
		<div class="col-md-6" id="reviewListView">
	       <section>
	       
				  <div style="width: 100%;">
				  <h2 class="section-title" style="color:#38d3ff;">다른 분들의 후기를 살펴보세요!</h2>
				  
					<table class="table table-striped" width="100%">
					
					<c:forEach var="s" items="${parkingReviewlist}">
					 	<tr><td style="width: 150px">작성자 : ${s.m_name}</td><td style="width: 250px">${s.e_date}</td>
					 	<td style="width: 150px">
					 	<!-- 평점이 이미지로 노출될 부분 -->
					 	<div class="reviewstar">
					 	<c:choose>
						<c:when test="${s.e_score=='1'}"><span class="star_comm star_1"></span></c:when>
						<c:when test="${s.e_score=='2'}"><span class="star_comm star_2"></span></c:when>
						<c:when test="${s.e_score=='3'}"><span class="star_comm star_3"></span></c:when>
						<c:when test="${s.e_score=='4'}"><span class="star_comm star_4"></span></c:when>
						<c:when test="${s.e_score=='5'}"><span class="star_comm star_5"></span></c:when> 
						</c:choose>
						</div>
						</td>
						<tr><td colspan="3">${s.e_content}</td></tr>
					</c:forEach>
					
					</table> 
				
				  </div>
	              
				
	      	</section>
	   </div>

	   <div class="clearfix"></div>
	   
  </div>
</center>






</body>

<jsp:include page="../include_bottom.jsp" />


</html>