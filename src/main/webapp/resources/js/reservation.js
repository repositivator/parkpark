function test(code){
	var m_code=code;
	$('input[name=code]').attr('value',m_code);
	document.reserForm.submit();
	/*location.href="member/myReservation";*/
}