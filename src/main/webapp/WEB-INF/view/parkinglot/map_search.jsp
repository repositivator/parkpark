<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" /> <!-- 경로 별명 지정 -->
    
    

<jsp:include page="../include_top.jsp" />

<head>

	 
	<!-- css link -->
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/parkinglot_map_search.css">
	
	<!-- Daum map API -->
	<script type="text/javascript" src="http://apis.daum.net/maps/maps3.js?apikey=9fc5641362c641c00674e20463dc4dcc"></script>
	
	
	<!-- DB Data(공영공영주차장정보) -->
	<script type="text/javascript">
	
	
		//공영주차장 좌표, 공영주차장명, 주소, 주차면수, 기본부과요금, 기본부과시간, 추가부과요금, 추가부과시간 정보 담는 객체
		var publicDatas = Array();       
		<c:forEach var="p" items="${data}" varStatus="status">                      //공영주차장 DB (jstl 사용)
		   var p_data = ["${p.lat}", "${p.lng}", "${p.p_name}", "${p.p_address}", "${p.p_capacity}", "${p.rates}", "${p.time_rate}", "${p.add_rates}", "${p.add_time_rate}"]; //공영주차장 각각의 정보를 배열로 담고 
		   publicDatas["${status.index}"] = p_data;                           //다시 배열로 전체공영주차장 정보를 담음
		</c:forEach>
		
		// 공유주차장 좌표, 공유주차장명, 주소 정보 담는 객체
		var shareDatas = Array();      
		<c:forEach var="s" items="${data2}" varStatus="status">                      //공유주차장 DB (jstl 사용)
		   var s_data = ["${s.lat}", "${s.lng}", "${s.s_name}", "${s.s_address}", "${s.s_image}", "${s.s_pay}", "${s.code}"]; //공유주차장 각각의 정보를 배열로 담고 
		   shareDatas["${status.index}"] = s_data;                           //다시 배열로 전체공유주차장 정보를 담음
		</c:forEach>
		
		   
		//지도 중심좌표(위도 경도)가 담길 변수
		var mapLat = 0;
		var mapLng = 0; 
		
		//검색키워드가 있는지 없는지를 판단하는 변수
		var keywordCheck = ${keywordCheck};
		
		if(keywordCheck){ //검색키워드가 있으면 키워드 중심으로 중심좌표 변경됨 
		   var resultIsS = false;
		   resultIsS = ${resultIsS}; 
		   if(resultIsS){ //공유주차장이 우선권을 갖는다
		      mapLat = shareDatas[0][0]; 
		      mapLng = shareDatas[0][1];
		   }else{
		      mapLat = publicDatas[0][0]; 
		      mapLng = publicDatas[0][1];
		   }
		}else{ //검색키워드가 없으면 강남역으로
		   mapLat = 37.497968;
		   mapLng = 127.027544;
		}
		
		
		//지도 설정
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		  mapOption = { 
		      center: new daum.maps.LatLng(mapLat, mapLng), // 지도의 중심좌표 
		      level: 5 // 지도의 확대 레벨 
		  }; 
		
		
		var emailKey = "${emailKey}";
		
		//리뷰화면으로 보내기
		function reviewWrite(s_code){
		   var s_code = s_code;
		   $('input[name=s_code]').attr('value', s_code);
		   document.getElementById('reviewForm').submit();
		}
		
		//검색결과가 없습니다. alert창
		window.onload = function() {
		    var alertCheck = "${alertCheck}";
		   if(alertCheck === "alert"){
		       alert("검색결과를 찾을 수 없습니다(전체결과를 출력합니다.)");
		    }
		}
	</script>   


</head>


<body>



<div id="mapwrap" class="map_wrap"> 

    <!-- 지도가 표시될 div -->
    <div id="map"></div>
    
    
    <!-- 지도 위에 표시될 마커 카테고리 -->
    <div class="category">
        <ul>
            <li id="allMenu" onclick="changeMarker('all')">
                <span class="ico_comm ico_all"></span>
                전체
            </li>
            <li id="shareMenu" onclick="changeMarker('share')">
                <span class="ico_comm ico_share"></span>
                공유
            </li>
            <li id="publicMenu" onclick="changeMarker('public')">
                <span class="ico_comm ico_public"></span>
                공영
            </li>
        </ul>
    </div>
    
    
    <!-- 지도 위에 표시될 검색창 -->
    <div id="menu_wrap" class="bg_white">
        <div class="option">
            <p>
            <form action="search" method="post"> 
                 <input type="text" name="searchValue" size="40" placeholder="  주차할 지역을 입력해주세요 (구 혹은 동 입력)" style="font-size: 13px; padding-left: 10px;">
                 <input type="submit" value="검색" onclick="panTo()" 
                 style="width: 50px;background-color: #38D3FF;background: #38D3FF;border: 1px solid #38D3FF;color: #fff;border-radius: 4px important!;font-size: 14px;text-align: center;font-weight: 400;vertical-align: middle;cursor: pointer;"> 
            </form>
            </p>
        </div>
    </div>    
                    
</div>
<!-- map setting -->


<div style="margin-bottom: -30px;">
<!-- 지도와 Footer 사이를 붙이기 위한 div -->
</div>


<script src="${path}/resources/js/parkinglot_map.js" type="text/javascript"></script>

</body>

<jsp:include page="../include_bottom.jsp" />

</html>