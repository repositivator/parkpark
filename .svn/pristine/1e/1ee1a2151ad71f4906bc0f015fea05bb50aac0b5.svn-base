
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
function ValidCheck()
{
    var thisform = document.myParkingModifyOkForm;
    if(isNull(thisform.weekday_begin_time.value) || isNull(thisform.weekday_end_time.value) ||isNull(thisform.saturday_begin_time.value) ||isNull(thisform.saturday_end_time.value) ||isNull(thisform.holiday_begin_time.value) ||isNull(thisform.holiday_end_time.value)){
            alert("내용을 입력해 주세요");
            return false;
    }else{
            alert("수정 완료");
            document.getElementById('myParkingModifyOkForm').submit();
    }
}
