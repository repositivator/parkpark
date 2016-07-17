//내가 등록한 주차장 수정
function myParkingModify(s_code){
   //alert(s_code);
   var code = s_code;
   $('input[name=code]').attr('value',code);
   document.myParkingModifyForm.submit();
}

//내가 등록한 주차장 삭제
function myParkingDelete(s_code){
   var check = confirm("정말 삭제하시겠습니까?");
   var code = s_code;
   //삭제를 원하면 삭제
   if(check){
      $('input[name=code]').attr('value',code);
      document.getElementById('myParkingDeleteForm').submit();
   }
}

//홈으로가기버튼
function main(){
	location.href='../start';
}