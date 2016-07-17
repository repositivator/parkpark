<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" /> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="${path}/resources/js/Myreview.js"></script>
<title>주차팍팍 - 주차, 이제 팍!팍! 빠르게 해버리자</title>
</head>
 <jsp:include page="../include_top.jsp" /> 


<body>

	
	
	<!-- 후기 수정을 위한 form -->
	<form name="updateForm" method="post" action="reviewupdate">
		<input type="hidden" name="code" value="${myreviewUpdate.code}">
		<input type="hidden" name="emailKey" value="${emailKey}">
		
		
			
		<h3 style="text-shadow: 0 1px 2px rgba(255,255,255,.15);font-size: 50px;font-weight: bold;margin-top: 20px;margin-left: 20%;margin-bottom: 20px;">후기 수정</h3>
		
					
		<div class="container">
		    <div class="row">
				<center>
				    <div class="form-group" style="margin-top: 60px;">
				        <i class="fa fa-map-marker"style="font-size:30px;color:#38d3ff;"></i>
				       <!--  <label for="InputPName" style="font-size:20px;">주차장 이름</label><br> -->
				        <label for="InputPName" style="font-size:20px; color:black; margin-left: 15px; margin-top: 10px;"  id="InputPName">${myreviewUpdate.s_name}</label>
				    <!-- </div>
				    <div class="form-group" style="margin-top: 30px;">
				        <label for="InputPName2" style="font-size:20px;">주차장 주소</label><br> -->
				        <label for="InputPName2" style="font-size:20px; color:rgba(56, 211, 255, 0.68); margin-left: 15px; margin-top: 10px;" id="InputPName2">(${myreviewUpdate.s_address})</label>
				    </div>
					              
					<div class="col-md-12" style="margin-top: 5px;">
					        <img src="${path}/resources/img_share/${myreviewUpdate.s_image}" style="width: 750px; height: 500px;" alt="주차장 이미지">
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
				  <h2 class="section-title" style="color:#38d3ff;">후기 정보를 수정해주세요</h2>
				  
						<div class="col-md-12">
					       <section>
						       
					              <div class="form-group" style="margin-top: 60px; margin-bottom: 50px;">
					                  <label for="InputPName2" style="font-size:20px;">하나, 별점을 선택해주세요!</label><br>
						
					   					<!-- 별점 with [ jquery.raty.js ] -->
					                  	<div id="star" style="margin-top: 10px;"></div>
										<input type="hidden" id="e_score" name="e_score" value="3"/>
										
									     <script type="text/javascript">
									        $(function() {
									            $('div#star').raty({
									                score: 3
									                ,path : "${path}/resources/img"
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
					                  <textarea name="e_content" cols="40%" rows="5" placeholder="후기를 입력해주세요." style="margin-top: 10px;">${myreviewUpdate.e_content}</textarea>
					              </div>
					              
					              
					              <div class="form-group" style="margin-top: 30px;">
					              	<input type="button" value="수정 완료" id="btnSubmit" onclick="contentCheck()" class="btn btn-primary" style="width: 200px;background-color: #38D3FF;background: #38D3FF;border: 1px solid #38D3FF;">
									<input type="button" onclick="maingogo()" value="돌아가기" class="btn btn-default"
									style="background-color: white;background: white;border: 1px solid rgba(56, 211, 255, 0.68);">	
								  </div>
					              
					
					              <div class="clearfix"></div>
					
					      	</section>
					   </div>
				  </div>
				</center>
				
			</div>
		</div>
		
	</form>

<jsp:include page="../include_bottom.jsp" />

