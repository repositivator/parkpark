function adminevalUpdate(code){
	var code = code;
	document.getElementById("")
	$('input[name=code]').attr('value',code);
	document.getElementById('adminevalUpdateForm').submit();
}

function adminevalDelete(code){
	var check = confirm("정말 삭제하시겠습니까?");
	var code = code;
	if(check){	
	$('input[name=code]').attr('value',code);
	document.getElementById('adminevalDeleteForm').submit();
	}
}