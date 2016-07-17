function passwdCheck(){
	if(modifyFrm.m_passwd.value===""){
		document.getElementById('checkPassword').style.color = "red";
		document.getElementById('checkPassword').innerHTML = "비밀번호를 입력해주세요.";
		modifyFrm.m_passwd.focus();
		return;
	}else{
		var m_email = $("#pwdCheckemail").val();
		var m_passwd = $("#pwdCheckpasswd").val();
		var allData = { "m_email": m_email, "m_passwd": m_passwd };
		$.ajax({
			type:"POST",
			url:"http://localhost:8080/boots_parkpark/pwdCheck",
			data:allData,
			dataType: "json",
			success:function(pwdCheck){
				if(pwdCheck){ //true : 비밀번호 불일치
					document.getElementById('checkPassword').style.color = "red";
					document.getElementById('checkPassword').innerHTML = "비밀번호를 다시 확인해 주세요.";
					//$("#m_passwd").remove();
					modifyFrm.m_passwd.focus();
				}else if(!pwdCheck){ //false : 비밀번호 일치. updateform으로 보내주는 컨트롤러로간다
					$(location).attr("href",
					"http://localhost:8080/boots_parkpark/member/memberUpdate");	
				}else{
					document.getElementById('checkPassword').innerHTML = "오류";
				}
			},error:function(){
				document.getElementById('checkPassword').innerHTML = "에러났엉";
			}
		});
	}
}