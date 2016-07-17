<%@page import="java.io.PrintWriter"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" /> <!-- 경로 별명 지정 -->


<%
String emailsession = (String)session.getAttribute("emailKey");
   if(emailsession==null || emailsession==""){ //로그인 상태가 아니면 로그인화면으로 이동
      // pageContext.forward("../member/login.jsp"); 포워드 방식 : 스코프에 담긴 값이 유효( request, response가 유효)
      PrintWriter writer=response.getWriter();
      writer.println("<script>alert('로그인 해주세요!'); location.href='../index.jsp';</script>");
      //response.sendRedirect("../member/login"); //리다이렉트방식 : request, response가 유지되지 않음      
   }
%>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Expires" content="-1">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="No-Cache">  


<!-- css link -->
<link rel="stylesheet" type="text/css" href="${path}/resources/css/parkinglot_registration.css">

<!-- Daum map API -->
<script type="text/javascript" src="http://apis.daum.net/maps/maps3.js?apikey=9fc5641362c641c00674e20463dc4dcc" charset="utf-8"></script>


</head>



<jsp:include page="../include_top.jsp" /> 




<body onload="init()">

<h3 style="text-shadow: 0 1px 2px rgba(255,255,255,.15);font-size: 50px;font-weight: bold;margin-top: 20px;margin-left: 20%;margin-bottom: 20px;">내 주차장 등록하기</h3>



<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h2 class="section-title" style="color:#38d3ff;">등록하실 주차장 위치를 선택해주세요.</h2>
        </div>
        

		<div id="map"></div>
		<div id="roadview"></div>


        <div class="col-md-12">
            <h2 class="section-title" style="color:#38d3ff;">원하시는 요금과 이용가능시간을 선택해주세요.</h2>
        </div>
        

		<div id="registration" class="col-md-12">
		
		   <form name="myParkingregForm" id="myParkingregForm" enctype="multipart/form-data" method="post" action="shareinsert">
		   
		   <input type="hidden" id="lat" name="lat">
		   <input type="hidden" id="lng" name="lng">
		   <input type="hidden" id="m_code" name="m_code" value="${codeKey}"> <!-- 세션에 저장된 회원코드 -->
		   <input type="hidden" id="gu" name="gu"> <!-- 선택된 구 이름-->
		   <input type="hidden" id="m_email" name="m_email" value="${emailKey}"> <!-- 회원이메일 -->
			   
       		<div class="col-md-4" style="border-right:3px solid rgba(0, 0, 0, 0.08);padding-right: 0;">
	            <section>
                    <div class="form-group" style="margin-top: 30px;">
                        <label for="InputPName" style="font-size:20px;">주차장 이름</label>
                        <input type="text" class="form-control" id="InputPName" name="s_name" size="15" maxlength="50" placeholder="주차장 이름" >
                    </div>
                    
                    <div class="form-group" style="margin-top: 20px;">
                        <label for="InputPName2" style="font-size:20px;">주차장 주소</label>
                        <input type="text" class="form-control" id="InputPName2" name="s_address" size="15" maxlength="50" placeholder="주차장 주소">
                    </div>
            
                    <div class="form-group" style="margin-top: 20px;">
                        <label for="InputPPicture" style="font-size:20px;">주차장 사진 등록</label>
               			<input type="file" name="uploadfile" id="uploadImage" required="required" style="margin-top:5px;font-family:sans-serif; font-size: 15px;margin-left: 6px;"/>
               		</div>
            
                  	<div class="clearfix"></div>

	            </section>
	        </div>
                    
       		<div class="col-md-4" style="border-right: 3px solid rgba(0, 0, 0, 0.08);height: 278px;padding-left: 20px;">
	            <section>
                    <div class="form-group" style="margin-top: 30px;">
                        <label for="InputPPrice" style="font-size:20px;">희망요금선택(1시간 단위)</label><br>
               			<table>
               				<tr>
               					<td style="padding-top: 15px;">
               						<span onclick="YogumCheck(document.myParkingregForm.gu);" class="btn btn-default">요금확인</span>
               					</td>
               					<td colspan="2"style="padding-top: 15px;">
               						<span class="cr6aa7cc lPad10" id="checkpay">버튼을 눌러 <b>우리지역의 평균 요금</b>을 확인해주세요</span>
               					</td>
               				</tr>
               				<tr>
               					<td style="padding-top: 15px;">최소금액</td>
               					<td style="padding-top: 15px;">	
               						<input type="range" id="nowpay" name="s_pay" min="0" max="0" value="0" step="10" oninput="s_payOutPutId.value = '요금을 ' + nowpay.value + '원으로 선택하셨습니다.'" style="width: 90%">
               					</td>
               					<td style="padding-top: 15px;">최대금액</td>
               				<tr>
               					<td colspan="3" style="padding-top: 25px;">
               					<output name=”s_payOutPutName” id="s_payOutPutId"></output>
               					</td>
               			</table>
                    </div>
                    
                  	<div class="clearfix"></div>

	            </section>
	        </div>


        	<div class="col-md-4">
            	<section>
            
                    <div class="form-group" style="margin-top: 30px;">
                        <label for="InputPTime" style="font-size:20px;">이용가능시간 설정</label><br>
                        <label for="InputPTime2" style="font-size:15px; margin-left: 10px;color:rgba(102, 102, 102, 0.48);">0시에서 24시까지 1시간 단위로 적어주세요!</label>
               			<table style="margin-left: 10px;margin-top: 10px;" class="table-hover">
							<tr>
						    	<td style="padding-right: 50px;padding-left: 10px;">월~금요일</td>
						    	<td style="padding-right: 10px;">
						    		<input type="text" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' style='ime-mode:disabled; width:50px;' name="weekday_begin_time" size="10" maxlength="10"/>시 ~ 
						    		<input type="text" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' style='ime-mode:disabled; width:50px;' name="weekday_end_time"/>시
						    	</td>
							</tr>        
							<tr>
							  	<td style="padding-right: 50px;padding-left: 10px;">토요일</td>
							  	<td style="padding-right: 10px;">
							  		<input type="text" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' style='ime-mode:disabled; width:50px;' name="saturday_begin_time" size="10" maxlength="10"/>시 ~ 
							  		<input type="text" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' style='ime-mode:disabled; width:50px;' name="saturday_end_time"/>시
							  	</td>
							</tr>
							<tr>
							   	<td style="padding-right: 50px;padding-left: 10px;">일요일/공휴일</td>
							   	<td>
								   	<input type="text" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' style='ime-mode:disabled; width:50px;' name="holiday_begin_time" size="10" maxlength="10"/>시 ~ 
								   	<input type="text" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' style='ime-mode:disabled; width:50px;' name="holiday_end_time"/>시
							   	</td>
							</tr>
						</table>
               		</div>
               
            	</section>
        	</div>
        
        
					
        	<div class="col-md-12">
            	<section>
            
                    <div class="form-group" style="margin-top: 30px;">
	                    <center>
	                    	<input type="button" value="주차장 등록" onclick="ValidCheckRegistration()" id="registrationBtnSubmit" class="btn btn-ar btn-primary" style="width: 300px;font-size: 25px;height: 50px;background-color: #38D3FF;background: #38D3FF;border: 1px solid #38D3FF;"  disabled>
	               			<!-- <input type="button" onclick="main()" value="메인으로" class="btn btn-ar btn-default"> -->
	            			<!-- <input type="submit" class="btn btn-ar btn-primary" value="메일발송" style="font-size: 20px; width:750px;"> -->
	                    </center>
               		</div>
      
            	</section>
        	</div>
		        
		   </form>
		</div>
        
    </div>
</div> <!-- container -->


<jsp:include page="../include_bottom.jsp" /> 


