<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" /> 



<jsp:include page="../include_top.jsp" />


<script>
$(document).ready(function(){
	var isSend="${isSend}";
	if(isSend=="Y"){
		alert("1:1 문의가 접수되었습니다! \n곧 연락드리도록 하겠습니다!");
		location.href='http://localhost:8080/boots_parkpark/index.jsp';      
	}

});
</script>





<!-- 
<header class="main-header no-margin-bottom">
    <div class="container">
        <h1 class="page-title">1:1 문의</h1>

        <ol class="breadcrumb pull-right">
            <li><a href="#">Pages</a></li>
            <li><a href="#">Forms</a></li>
            <li class="active">Contact</li>
        </ol>
    </div>
</header>

 -->
<iframe class="margin-bottom" width="100%" height="350" src="http://maps.google.com/maps?f=q&source=s_q&hl=kr&geocode=&q=yeoksam-dong%2B819-10&ie=UTF8&z=17&t=m&iwloc=near&output=embed"></iframe>

<h3 style="text-shadow: 0 1px 2px rgba(255,255,255,.15);font-size: 50px;font-weight: bold;margin-top: 20px;margin-left: 20%;margin-bottom: 20px;">1:1 문의</h3>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h2 class="section-title">1시간 이내에 답변을 드리도록 하겠습니다!</h2>
        </div>
        
        <div class="col-md-8" style="margin-top: 20px">
            <section>
                <!-- <p>Lorem ipsum Ex aliqua tempor nisi laboris dolor id laborum irure minim tempor in sit dolore amet sit esse nostrud tempor nulla consequat aute in nostrud laboris sint ullamco amet nisi pariatur officia nulla pariatur in id et labore dolore ad sit.</p> -->
                <form role="form" method="post">
                    <div class="form-group">
                        <label for="InputName" style="font-size:20px;">제목</label>
                        <input type="text" class="form-control" id="InputName" name="subject">
                    </div>
                    <div class="form-group">
                        <label for="InputEmail1" style="font-size:20px;">연락처(메일 혹은 전화번호)</label>
                        <input type="text" class="form-control" id="InputEmail1" name="contactPoint">
                    </div>
                    <div class="form-group">
                        <label for="InputMessage" style="font-size:20px;">내용</label>
                        <textarea class="form-control" id="InputMessage" rows="8" name="content"></textarea>
                    </div>
                    <center>
                    	<input type="submit" class="btn btn-ar btn-primary" value="문의 접수" style="font-size: 20px; width:750px;">
                    </center>
                    <div class="clearfix"></div>
                </form>
            </section>
        </div>

        <div class="col-md-4" style="margin-top:45px;">
            <section>
                <div class="panel panel-primary">
                    <div class="panel-heading"><i class="fa fa-envelope-o"></i>각 분야 인재 채용 중입니다!</div>
                    <div class="panel-body">
                        <h4 class="section-title no-margin-top">Contacts</h4>
                        <address>
                            <strong>(주)주차팍팍</strong><br>
                            서울특별시 강남구 <br>
                            역삼동 819-10 세경빌딩 3층<br>
                02-4213-2145
                            <!-- Mail: <a href="#">support@openmid.com</a> -->
                        </address>

                        <!-- Business Hours -->
                        <h4 class="section-title no-margin-top">Business Hours</h4>
                        <ul class="list-unstyled">
                            <li><strong>월요일~금요일:</strong> 오전 9시 ~ 오후 11시</li>
                            <li><strong>주말 및 공휴일:</strong> 오전 9시 ~ 오후 10시</li>
                        </ul>
                    </div>
                </div>
            </section>
        </div>
        
        
    </div>
</div> <!-- container -->







<!-- 
OLDER 2
<form method="post">
<table>

	<tr><td class="tt">수신자</td>
		<td><input type="text" name="receiver"/></td></tr>
	
	<tr><td class="tt">제목</td>
		<td><input type="text" name="subject"/></td></tr>
		
	<tr><td class="tt">연락처(메일 혹은 전화번호)</td>
		<td><input type="text" name="contactPoint"/></td></tr>
		
	<tr><td class="tt">내용</td>
		<td>
			<textarea name="content" rows="13"></textarea>
		</td></tr>
	<tr><td colspan="2" align="center">
		<input type="submit" value="메일발송"/></td></tr>
</table>
</form> 
-->



<!--
OLDER 1
<form action ="mail.do" method = "post">
	<input type="submit" value="발송">
</form> -->


<jsp:include page="../include_bottom.jsp" />

