
chkAjaxPay = false;



   //맵 전역변수
   var map;
   //마커 전역변수
   var marker = null;
   //새로운 위치 전역변수
   var crr_position=null;
   //로드뷰 클라이언트 전역변수
   var rc = null;
   //로드뷰 전역변수
   var rv = null;
   
   //맵 초기화
   function init() {
      var p = new daum.maps.LatLng(37.497968, 127.027544); //강남역으로
      //맵 생성
      map = new daum.maps.Map(document.getElementById('map'), {
         center: p
      });
      //로브뷰 클라이언트 생성 - 로드뷰 데이터를 다룬다.
      rc = new daum.maps.RoadviewClient();
      //로드뷰 생성
      rv = new daum.maps.Roadview(document.getElementById("roadview"));
      
      //로드뷰 보기
      showRoadview(p);
      
      //마커생성
      marker = new daum.maps.Marker({
         position: p
      });
      //마커 붙이기
      marker.setMap(map);
      //마커가 드래그 가능하도록 지정
      marker.setDraggable(true);
      //맵위에 로드뷰 선 생성
      skyview = new daum.maps.RoadviewOverlay();   
      //맵위에 로드뷰 선 그리기
      skyview.setMap(map);
      
      //이벤트 추가 - 마커의 드래그가 끝난 후
      daum.maps.event.addListener(marker,"dragend",function(){
         crr_position = marker.getPosition();
         //현위치의 좌표값을 출력
         writePosition(crr_position);
         //새로운 위치에 대한 로드뷰를 생성한다. 
         showRoadview(crr_position);         
      });
      //update된 부분
      //이벤트 추가 - map 더블클릭 후
      daum.maps.event.addListener(map,"click",function(e){
         //더블클릭된 맵의 중심좌표를 crr_position으로 정의
         crr_position = e.latLng;
         //마커의 중심좌표를 새로 바뀐 맵의 좌표값 crr_position으로 바꾼다.
         marker.setPosition(crr_position);         
         //현위치의 좌표값을 출력
         writePosition(crr_position);
         //새로운 위치에 대한 로드뷰를 생성한다. 
         showRoadview(crr_position);         
      });
      //파노라마 ID가 바뀌면 발생한다.
      daum.maps.event.addListener(rv,"position_changed",onRoadviewPointChanged);         
   
   }
//로드뷰 보는 함수
function showRoadview(p){
      //특정 좌표에서 반경 내 가장 가까운 로드뷰 파노라마 ID를 구한다.(좌표:p,반경:50)
      rc.getNearestPanoId(p, 50, function(panoid) {
         //파노라마 ID를 지정한다.
         rv.setPanoId(panoid, p);
      });      
}
//파노라마 ID가 바뀔 때 로드뷰에서 바뀐 좌표값 
function onRoadviewPointChanged() {   
   //로드뷰에서 바뀐 좌표값을 crr_position으로 정의
   crr_position = rv.getPosition();
   //맵의 중심좌표를 새로 바뀐 좌표값 crr_position으로 바꾼다.
   map.setCenter(crr_position);
   //마커의 중심좌표를 새로 바뀐 좌표값 crr_position으로 바꾼다.
   marker.setPosition(crr_position);
   writePosition(crr_position);
   callAddress(crr_position);
}
//좌표값을 출력해주는 함수
function writePosition(p) { 
   $('input[name=lat]').attr('value',p.getLat()); //hidden으로 보낼 위도
   $('input[name=lng]').attr('value',p.getLng()); //hidden으로 보낼 경도
}
//주소 url을 부르는 함수
function callAddress(p) {   
   var url = "http://apis.daum.net/local/geo/coord2detailaddr?apikey=9fc5641362c641c00674e20463dc4dcc&x="+p.getLng()+"&y="+p.getLat()+"&inputCoordSystem=WGS84&output=json&callback=showAddress";
   var url2 = "http://apis.daum.net/local/geo/coord2addr?apikey=9fc5641362c641c00674e20463dc4dcc&longitude="+p.getLng()+"&latitude="+p.getLat()+"&inputCoordSystem=WGS84&output=json&callback=showPayBoundary";
   doJsonpCall(url);
   doJsonpCall2(url2)
}
//JSON방식으로 좌표->주소 변환 함수(상세주소)
function doJsonpCall(url)   {
   var s = document.createElement('script');
      s.type = "text/javascript";
      s.charset ="utf-8";
      s.src = url;
      document.getElementsByTagName('head')[0].appendChild(s);
}

//JSON방식으로 좌표->주소 변환 함수(시/구 이름 찾기)
function doJsonpCall2(url)   {
   var s = document.createElement('script');
      s.type = "text/javascript";
      s.charset ="utf-8";
      s.src = url;
      document.getElementsByTagName('head')[0].appendChild(s);
}



//JSON방식에 의해 변환된 주소 출력
function showAddress(a) {
   //$('input[name=s_name]').val('');
   //$('input[name=s_address]').val('');
   $('input[name=s_name]').attr('value',a.old.name + ' 공유주차장'); //지도에서 선택한 주소를 바탕으로 주차장 이름 default값 설정
   $('input[name=s_address]').attr('value',a.old.name); //지도에서 선택한 주소를 바탕으로 주차장 주소 default값 설정
   $('span[id=checkpay]').text("버튼을 눌러 우리지역의 평균 요금을 확인해주세요");  //지도에서 다른 주소를 선택할 때마다 요금확인 권장
   document.getElementById("registrationBtnSubmit").disabled = true; //요금확인하지 않으면 등록불가
   $('input[name=s_pay]').attr('min','0');   //range tag의 최소값 = 0
   $('input[name=s_pay]').attr('max','0');    //range tag의 최대값 = 0
   $('input[name=s_pay]').attr('value','0'); //range tag의 기본시작값 = 0
}

//구이름 확인
function showPayBoundary(b){
   var name2 = b.name2; //구 이름
   $('input[name=gu]').attr('value',name2);
}


//요금확인
function YogumCheck(comp){  
   var gu;
   gu = comp.value;
   $.ajax({
      type: "POST",
      url: "http://localhost:8080/boots_parkpark/parkinglot/guValue",
      data: {"gu" : gu},
      dataType: "json",
      success:function(pay_avg){ //구별 평균요금 : pay_avg
         if(pay_avg == null || pay_avg == "" || pay_avg == 0){ //검색결과가 없으면 메세지 출력 및 등록불가
            $("#checkpay").html("<font class='crRed' >해당 지역은 평균요금을 산출할 수 없습니다.</font>");
            document.getElementById("registrationBtnSubmit").disabled = true; 
            $('input[name=s_pay]').attr('min','0');   //range tag의 최소값 = 0
            $('input[name=s_pay]').attr('max','0');    //range tag의 최대값 = 0
            $('input[name=s_pay]').attr('value','0'); //range tag의 기본시작값 = 0
         }else{  //평균요금이 구해지면
            maxpay = pay_avg * 2.5; //평균요금의 250%
            $("#checkpay").html("최소 <b>" + pay_avg + "원</b> ~ 최대 <b>" + maxpay + "원</b> (1시간 당) 선택가능"); //지역 평균요금의 100~250%
            document.getElementById("registrationBtnSubmit").disabled = false; //등록버튼 활성화
            $('input[name=s_pay]').attr('min',pay_avg);   //range tag의 최소값
            $('input[name=s_pay]').attr('max',maxpay);    //range tag의 최대값
            $('input[name=s_pay]').attr('value',pay_avg); //range tag의 기본시작값
         }
      },error:function(){
         $("#checkpay").html("<font class='crRed' >해당 지역은 평균요금을 산출할 수 없습니다2.</font>");
         document.getElementById("registrationBtnSubmit").disabled = true; 
         $('input[name=s_pay]').attr('min','0');   //range tag의 최소값 = 0
         $('input[name=s_pay]').attr('max','0');    //range tag의 최대값 = 0
         $('input[name=s_pay]').attr('value','0'); //range tag의 기본시작값 = 0
      }
      
   });

   chkAjaxPay = true;
}


//홈으로가기 버튼
function main(){
	location.href='../start';
}


//숫자, 편집키(왼쪽/오른쪽 화살표키, delete키, backspace키 만 입력할 수 있게 하기)
function onlyNumber(event){
	event = event || window.event;
	var keyID = (event.which) ? event.which : event.keyCode;
	if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
		return;
	else
		return false;
}
function removeChar(event) {
	event = event || window.event;
	var keyID = (event.which) ? event.which : event.keyCode;
	if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
		return;
	else
		event.target.value = event.target.value.replace(/[^0-9]/g, "");
}


function isNull(elm)
{ 
    //Null 체크 함수
    var elm;
    return (elm == null || elm == "" || elm == "undefined" || elm == " ") ? true : false
}
function ValidCheckRegistration(){
	//이미지 업로드 null값 확인
    var imgVal = $('#uploadImage').val();  
    if(imgVal==''){  //이미지가 없으면
        alert("이미지가 없습니다"); 
        return false; 
    }else{  //이미지가 있으면 예약내용이 입력되었는지 확인
    	var thisform = document.myParkingregForm;
    	if(isNull(thisform.weekday_begin_time.value) || isNull(thisform.weekday_end_time.value) ||isNull(thisform.saturday_begin_time.value) ||isNull(thisform.saturday_end_time.value) ||isNull(thisform.holiday_begin_time.value) ||isNull(thisform.holiday_end_time.value)){
    		alert("내용을 입력해 주세요");
    		return false;
    	}else{ //예약내용까지 전부 입력이 되었으면 등록 
    		alert("등록 완료");
    		document.getElementById('myParkingregForm').submit();
    	}    	
    }
	
}



$(document).ready(function() {
    $('#upload').bind("click",function() 
    { 


    }); 
});