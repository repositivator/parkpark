<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<jsp:include page="include_top.jsp" />



<header id="header-full">
    <div class="wrap-primary">
        <div class="container">
        
            <!-- <h1 class="head-title animated bounceInDown animation-delay-8">주차 팍팍!</h1> -->
            
            <!-- 메인화면 이미지 -->
            <img src="<%=request.getContextPath() %>/bootstrap/assets/img/logo_raw_white_park.png" alt="" class="aligncenter head-full-logo animated bounceIn animation-delay-5"
            style="width: 700px; margin-top: 70px; margin-bottom: 70px;">
            
            
            <form action="parkinglot/search" method="post">   <!-- 검색 시 보내질 form -->
            <div class="row animated fadeIn animation-delay-18" style="margin-bottom : 40px;" align="center">
              <div class="col-md-8 col-md-offset-2">
                <div class="input-group" style="width: 450px; height: 50px;"> <!-- 메인검색창 & 버튼 전체 너비 -->
                  <input type="text" name="searchValue" class="form-control" placeholder="주차할 지역을 입력해주세요 (ex. 강남구, 논현동 등)" style="height: 50px; font-weight: bold;">
                  <span class="input-group-btn">
                    <button class="btn btn-primary" style="background-color: #38D3FF; height: 50px; font-weight: bold; font-size: 23px;" type="submit" onclick="panTo()">
                    	<i class="fa fa-search"></i> 
                    </button>
                  </span>
                </div><!-- /input-group -->
              </div><!-- /.col-lg-6 -->
            </div><!-- /.row -->    
            </form>
            
            <h2 class="secondary-color text-center head-subtitle animated fadeInUp animation-delay-14" style="font-weight: bold;">가득 찬 주차장은 이제 그만!</h2>
            <h2 class="secondary-color text-center head-subtitle animated fadeInUp animation-delay-14" style="font-weight: bold;">지금 바로 비어있는 주차장을 찾고 한 번에 주차하세요!</h2>
            
            
            <!-- <p class="lead text-center animated fadeInUp animation-delay-14">
            We bring the revolution to the web design, our principles are experience, knowledge and creativity. Discover all that can offer artificial reason.</p> -->
            
            
        </div>
    </div>
</header>

<section class="wrap-dark-color margin-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-7 feature-container">
                    <!-- <a class="feature-icon">
                        <i class="fa fa-desktop"></i>
                        <h4>Retina</h4>
                    </a> -->
                    <a class="feature-icon">
                        <i class="fa fa-usd"></i>
                        <h4>저렴한 가격으로</h4>
                    </a>
                    <a class="feature-icon">
                        <i class="fa fa-clock-o"></i>
                        <h4>원하는 시간에</h4>
                    </a>
                    <a class="feature-icon">
                        <i class="fa fa-map-marker"></i>
                        <h4>원하는 장소에서</h4>
                    </a>
                </div>
                <div class="col-md-5 hidden-sm hidden-xs" style="font-size: 18px;">
                    <p class="lead text-center"> 주차는 주차팍팍에게 맡겨주세요! <br> 기존 사설주차장 대비 50~80% 저렴합니다.</p>
                </div>
            </div>
        </div>
    </section>


	
<div class="row header-full-icons text-center" style="margin-top: 140px; margin-bottom: 120px; padding-left: 200px; padding-right: 200px; ">
    <div class="col-sm-3 animated fadeInDown animation-delay-19">
        <span class="icon-ar icon-ar-no-border icon-ar-rxl-lg icon-ar-blue icon-ar-inverse" style="font-size: 240px;"><i class="fa fa-search"></i></span>
        <h3 style="text-shadow: 0 1px 2px rgba(255,255,255,.15);font-size: 50px;">Search!</h3>
        <p class="text-center" style="font-size: 21px; text-shadow: 0 1px 2px rgba(255,255,255,.15);">주차하려는 지역을 검색해주세요</p>
    </div>
    
    <div class="col-sm-2 animated fadeIn animation-delay-19">
        <span class="icon-ar icon-ar-no-border icon-ar-rxl-lg icon-ar-blue " style="font-size: 80px;background-color: white;color: rgb(235, 251, 255);margin-left: -60px;margin-top: 130px;"><i class="fa fa-arrow-right"></i></span>
    </div>
    
    <div class="col-sm-2 animated fadeInDown animation-delay-21">
        <span class="icon-ar icon-ar-no-border icon-ar-rxl-lg icon-ar-blue icon-ar-inverse" style="font-size: 240px;"><i class="fa fa-map-marker"></i></span>
        <h3 style="text-shadow: 0 1px 2px rgba(255,255,255,.15);font-size: 50px;">Select!</h3>
        <p class="text-center" style="font-size: 21px;width: 285px;margin-left: -25px;text-shadow: 0 1px 2px rgba(255,255,255,.15);">원하는 주차장을 선택해주세요</p>
    </div>
    
    <div class="col-sm-2 animated fadeIn animation-delay-19">
        <span class="icon-ar icon-ar-no-border icon-ar-rxl-lg icon-ar-blue " style="font-size: 80px;background-color: white;color: rgb(235, 251, 255);margin-top: 130px;"><i class="fa fa-arrow-right"></i></span>
    </div>
    
    <div class="col-sm-3 animated fadeInDown animation-delay-22">
        <span class="icon-ar icon-ar-no-border icon-ar-rxl-lg icon-ar-blue icon-ar-inverse" style="font-size: 240px; margin-left: 30px;"><i class="fa fa-check-square-o"></i></span>
        <h3 style="text-shadow: 0 1px 2px rgba(255,255,255,.15);font-size: 50px;">Done!</h3>
        <p class="text-center" style="font-size: 21px; text-shadow: 0 1px 2px rgba(255,255,255,.15);">단 10초 만에 예약 완료!</p>
    </div>
</div>


<div class="container">
    <section class="margin-bottom">
        <div class="row">
        
            <div class="col-md-12">
				<h2 class="right-line" style="font-family: Montserrat,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif; font-size: 25px; color: #38D3FF;margin-bottom: 70px;">남는 주차장의 공간으로 수익을 거둘 수 있습니다!</h2>
            </div>
            
            <div class="col-md-4 col-sm-6" style="width: 60%">
                <div class="text-icon wow fadeInUp" style="margin-bottom: 0;">
                    <!-- <span class="icon-ar icon-ar-lg"><i class="fa fa-usd"></i></span> -->
                    <div class="text-icon-content" style="margin-top: 44px;">
                    	<span class="icon-ar icon-ar-no-border icon-ar-rxl-lg icon-ar-blue icon-ar-inverse" style="margin-top: -38px;"><i class="fa fa-usd"></i></span>
                        <h3 class="no-margin" style="width: 400px;">주차장 등록 수수료 선착순 무료!</h3>
                        <p style="font-size: 23px;">대부분의 시간 동안 텅텅 비어있는 주차장이 있으신가요? </p>
                        <p style="font-size: 23px;">1분 만에 주차장을 등록하고 매일매일 수익을 가져가세요!</p>
                    </div>
                </div>
            </div>
		           
			<div class="col-lg-4 col-md-6 col-sm-6" style="float: right; margin-right: 50px;">
			   <div class="img-caption-ar wow fadeInUp">
			       <img src="<%=request.getContextPath() %>/bootstrap/assets/img/parking_regist.jpg" class="img-responsive" alt="Image">
			       <div class="caption-ar">
			           <div class="caption-content">
			               <a href="http://localhost:8080/boots_parkpark/parkinglot/map_search" class="animated fadeInDown" style="margin-top: 20px;"><i class="fa fa-search"></i>주차장 구경하기</a>
			               <!-- <h4 class="caption-title">Image title</h4> -->
			            </div>
			        </div>
			    </div>
			</div>
		     
      		<div class="col-md-7" style="text-align: center;">
                <ul class="services-header-list" style="margin-left: 80px;">
                    <li class="animated fadeInUp animation-delay-5" style="background-color: #38D3FF;">
                    	<a href="parkinglot/registration" >내 주차장 등록하기</a>
                    </li>
                </ul>
            </div>
            
            <div class="col-md-12" style="margin-top: 30px; margin-bottom: 50px;">
				<h2 class="right-line" style="color: #FFFFFF; font-size: 0.1px;">.</h2>
      		</div>
      		
        </div> <!-- row -->
    </section>
</div>


<div class="container">
    <div class="row">
    
        <div class="col-md-12" style="text-align: center;">
			<h2 style="font-family: Montserrat,Helvetica,Arial,sans-serif;font-size: 35px; color: #38D3FF;margin-bottom: 40px;">여러분의 주차를 책임집니다!</h2>
        </div>
        
        <div class="col-md-12">
            <section class="css-section">
                <!-- <h2 class="section-title">여러분의 주차를 책임집니다!</h2> -->
               
                <ul class="bxslider" id="bx3" style="font-family: Montserrat,Helvetica,Arial,sans-serif;">
                  <li>
                    <div class="thumbnail" style="border:0px;">
                      <img src="<%=request.getContextPath() %>/bootstrap/assets/img/customer_1.jpg" alt="...">
                      <div class="caption" style="text-align: center;">
                        <h3>처음 써보는데 너무 편리해요!!</h3>
                        <p>처음 사용해보는데 어떻게 사용하는건지 설명이 잘 되어있어서 쉽게 예약할 수 있었네요. 예약하면서 로드뷰로 실제 주차장 위치를 보여줘서 안헤매고 한번에 잘 찾아 갈 수 있었어요. 원하는 시간에 예약해서 주차장 잘 이용했습니다~</p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="thumbnail" style="border:0px;">
                      <img src="<%=request.getContextPath() %>/bootstrap/assets/img/customer_2.jpg" alt="...">
                      <div class="caption" style="text-align: center;">
                        <h3>늘 주차하기 너무 힘들었는데..</h3>
                        <p>가끔 일때문에 서울 오는데 올때마다 주차때문에 힘들었거든요.주차요금도 너무 비쌌구요.서울 사는 친구한테 말했더니 자기도 자주 쓴다고 주차팍팍 추천해주더라구요~오늘 처음 써봤는데 완전 유용해요!저렴하고 안전하게 주차할 수 있었습니다. 자주 이용할게요~!</p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="thumbnail" style="border:0px;">
                      <img src="<%=request.getContextPath() %>/bootstrap/assets/img/customer_3.jpg" alt="...">
                      <div class="caption" style="text-align: center;">
                        <h3>자주 이용하고 있어요 주차팍팍!</h3>
                        <p>한번 써보고 너무 편해서 주변에 추천해주고있어요~일반 사설 주차장은 남은자리있나없나 들어갔다와야하고 열쇠도 맡기고 좀 불안한게 있었어요.주차 팍팍은 미리 예약하고 가면 되고 열쇠 맡길필요도 없어서 안심이네요! 주변에 추천해준 친구들 반응도 좋아요~</p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="thumbnail" style="border:0px;">
                      <img src="<%=request.getContextPath() %>/bootstrap/assets/img/customer_4.jpg" alt="...">
                      <div class="caption" style="text-align: center;">
                        <h3>벌써 단골주차장도 생겼어요.</h3>
                        <p>회사 근처에 차댈곳이 없어서 항상 멀리대고 걸어왔었는데 주차팍팍 알게된 후에 그럴필요가 없어졌어요. 회사근처에 퇴근시간까지 예약 가능한 주차장이 잇어서 매일 거기 이용하고 잇습니다. 상상도 못했던 아침 시간여유도 생겼어요~주차팍팍덕분입니다!^^ </p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="thumbnail" style="border:0px;">
                      <img src="<%=request.getContextPath() %>/bootstrap/assets/img/customer_5.jpg" alt="...">
                      <div class="caption" style="text-align: center;">
                        <h3>매일같이 주차 전쟁이었는데..</h3>
                        <p>주택가 많은 곳에 살고 있어 주차전쟁을 치루던 사람입니다. 주차장에 주차하려해도 9시 10시면 끝나고 월마다 비싼요금 지불해야하고..꽤 부담갔었는데 주차팍팍 이용하니 부담도 줄고 주차전쟁스트레스에서도 벗어났네요.사업 번창하세요.</p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="thumbnail" style="border:0px;">
                      <img src="<%=request.getContextPath() %>/bootstrap/assets/img/customer_6.jpg" alt="...">
                      <div class="caption" style="text-align: center;">
                        <h3>이제서야 이런 서비스가ㅠㅠ</h3>
                        <p>지금까지 비싼 주차장들을 쓰면서 길거리에 버린 돈들이 아깝네요. 이제서야 나오다니! 비슷한 서비스들 많이 봤지만 제일 빠른 것 같아요. 궁디팡팡 해줄테니 어서 서비스 팍팍! 키워주세요! 자주자주 애용하겠습니다 고마워요!!</p>
                      </div>
                    </div>
                  </li>
<%--                   <li>
                    <div class="thumbnail">
                      <img src="<%=request.getContextPath() %>/bootstrap/assets/img/parking_regist.jpg" alt="...">
                      <div class="caption" style="text-align: center;">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem, repellat, vitae porro ex expedita cumque nulla velit consequuntur recusandae animi.</p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="thumbnail">
                      <img src="<%=request.getContextPath() %>/bootstrap/assets/img/parking_regist.jpg" alt="...">
                      <div class="caption" style="text-align: center;">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem, repellat, vitae porro ex expedita cumque nulla velit consequuntur recusandae animi.</p>
                      </div>
                    </div>
                  </li> --%>
                </ul>
		        
		        <div class="bxslider-controls" style="margin-top: -40px; margin-right: 1%;">
		            <span id="bx-prev"></span>
		        </div>	

		        <div class="bxslider-controls" style="margin-top: -40px; margin-right: 1%;">
		            <span id="bx-next"></span>
		        </div>	
            </section>
        </div>
        
    </div>
</div>


        
<div class="container">
    <div class="row">
    
		<div class="col-md-10" style="text-align: center;">
		  <ul class="services-header-list" style="margin-left: 190px;margin-top: -40px;margin-bottom: 130px;">
		     <li class="animated fadeInUp animation-delay-5" style="background-color: #38D3FF;">
		     	<a href="#">주차장 예약하기</a>
		     </li>
		  </ul>
		</div>
		            
    </div>
</div> 		

<jsp:include page="include_bottom.jsp" />