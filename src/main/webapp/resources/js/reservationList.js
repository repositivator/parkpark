function adminreservationUpdate(code){
	var code = code;
	document.getElementById("")
	$('input[name=code]').attr('value',code);
	document.getElementById('adminreservationUpdateForm').submit();
}

function adminreservationDelete(code){
	var check = confirm("정말 삭제하시겠습니까?");
	var code = code;
	if(check){	
	$('input[name=code]').attr('value',code);
	document.getElementById('adminreservationDeleteForm').submit();
	}
}