<%@page import="member.model.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" /> 


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주차팍팍 - 주차, 이제 팍!팍! 빠르게 해버리자 - 정보수정</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


</head>

<jsp:include page="../include_top.jsp" />
<link href="${path}/resources/css/memberUpdate.css" rel="stylesheet" type="text/css">
<script src="${path}/resources/js/memberUpdate.js"></script>
<body>




<h3 style="text-shadow: 0 1px 2px rgba(255,255,255,.15);font-size: 50px;font-weight: bold;margin-top: 20px;margin-left: 20%;margin-bottom: 20px;">개인정보 수정</h3>




<div class="container">
    <div class="row">
		    
		<div class="col-md-12">
		  
		<div class="col-md-8">
		  		<h2 class="section-title" style="color:#38d3ff;"><b>${emailKey}</b> 님 환영합니다!</h2>
		</div>
		<div class="col-md-4" style="margin-top: 39px;">
	  		<table>
            	<tr>
            		<td>
            			<!-- 내가 등록한 후기 보기 위한 form -->
						<form name="reviewForm" method="post" action="MyReview">
							<table style="width:60%;">
								<tr>
									<td colspan="2" align="center">
										<input type="hidden" name="emailKey" size="15" value="${emailKey}">
										<input type="button" onclick="MyReview()" value="내가 쓴 글 보기" class="btn btn-primary">
									</td>
								</tr>
							</table>
						</form>
            		</td>
            		<td>
            		
						<!-- 탈퇴를 위한 form -->
						<form name="deleteForm" method="post" action="memberdel">
							<table>
								<tr>
									<td colspan="2" align="center">
										<input type="hidden" name="m_email" id="m_email" size="15" value="${emailKey}">
										<input type="button" onclick="memberDelete()" value="탈퇴하기" class="btn btn-danger">
									</td>
								</tr>
							</table>
						</form>

            		</td>
            	</tr>
			</table>
		</div>          	
						            	
		  
			<div id="signup" class="col-md-12">
			       <center>
			       <section>
			       
				       	<!-- 회원정보 수정을 위한 from -->
						<form name="updateForm" method="post" action="memberup">
						
			                    <div class="form-group" style="margin-top: 30px; font-size:15px; margin-bottom: 7px;">
			                    	<input type="hidden" name="m_email" id="m_email" size="15" value="${emailKey}"/>
			                        
			                        <table>
			                        	<tr>
			                        		<td>
			                        		<label for="InputPName" style="font-size:20px;">비밀번호 수정</label><br>
			                         		</td>
			                        	</tr>
			                        	
			                        	<tr>
			                        		<td>
			                        		 <input type="password" name="m_passwd"  maxlength="16" size="15" onKeyUp="checkUpdatePwd();" onKeyDown="checkPwd();" placeholder="비밀번호" value=""
					                        style="margin: 0px;margin-bottom: 0px;margin-top: 10px;margin-left: 10px;padding-left: 10px;width: 200px;border: 2px solid #ccc;    padding-bottom: 3px;padding-top: 3px;">
											<span class="cr6aa7cc lPad10" style="font-size:15px;">공백없는 8~16자의 영문/숫자를 조합하여 입력해야합니다.</span>	
					                        </td>
			                        	</tr>
			                        	<tr>
			                        		<td style="padding-top:10px;">
			                        		<input type="password" name="repasswd"  maxlength="16" size="15" onKeyUp="checkUpdatePwd();" onKeyDown="checkPwd();" placeholder="비밀번호 재확인" 
					                        style="margin: 0px;margin-top: 0px;margin-left: 10px;padding-left: 10px;width: 200px;border: 2px solid #ccc;    padding-bottom: 3px;padding-top: 3px;">
											<span class="cr6aa7cc lPad10" id="UpdatecheckPwd" style="font-size:15px;">비밀번호 확인을 위해 다시 한번 입력해주세요.</span>
											</td>
			                        	</tr>
			                          	<tr>
				                    		<td style="padding-top:30px;">
				                    			<label for="InputPName" style="font-size:20px;">이름 수정</label><br>
				                    		</td>
				                    	</tr>
				                    	<tr>
				                    		<td>
				                    			<input type="text" name="m_name" size="15" placeholder="성함을 입력해주세요"
			                        			style="margin: 0px;margin-top: 10px;margin-left: 10px;padding-left: 10px;width: 200px;border: 2px solid #ccc;padding-bottom: 3px;padding-top: 3px;">
											</td>
				                    	</tr>
				                    </table>
			                    </div>
			           	
					            <table>
					            	<tr>
					            		<td>
					            			<div class="form-group" style="margin-top: 20px;">
						                       <input type="button" value="수정하기" id="memberUpdateSubmit" class="btn btn-primary"  style="width: 215px;background-color: #38D3FF;background: #38D3FF;border: 1px solid #38D3FF;">
												<!-- <input type="button" onclick="main()" value="돌아가기" class="btn btn-default"
												style="background-color: white;background: white;border: 1px solid rgba(56, 211, 255, 0.68);"> -->
											</div>
					            		</td>
					            	</tr>
					            </table>
			            
						</form>
		            
		               	<div class="clearfix"></div>
					
		      	</section>
		      	</center>
		   </div>
				
		   
		</div>

	</div>
</div>



<jsp:include page="../include_bottom.jsp" />


</html>