function reviewUpdate(code){
	var code = code;
	document.getElementById("")
	$('input[name=code]').attr('value',code);
	document.getElementById('reviewUpdateForm').submit();
}

function reviewDelete(code){
	var check = confirm("정말 삭제하시겠습니까?");
	var code = code;
	if(check){
	$('input[name=code]').attr('value',code);
	document.getElementById('reviewDeleteForm').submit();
	}
}

function maingogo(){
	history.go(-1)();
}

function contentCheck(){
	if(updateForm.e_content.value===""){
		alert("후기를 입력해주세요.");
		updateForm.e_content.focus();
		return;
	}
	document.updateForm.submit();
}





