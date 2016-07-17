var chkID = false, chkAjaxID = false;
var chkName = false;
var chkPw = false;
var chkAgree = false;
var chkAgreePrivate = false;

function checkPwd(){
		var frm = document.regForm;
		var pw1 = frm.m_passwd.value;
		var pw2 = frm.repasswd.value;
		var regExp1 = /^[A-Za-z0-9+]{8,16}$/;  //문자열 길이를 제한{},  8자 이상, 16자 이하의 문자열 필터링이 가능

		
		if(pw1==""||pw2==""){
			document.getElementById('checkPwd').style.color = "#5e0231";
			document.getElementById('checkPwd').innerHTML = "한번 더 입력하세요.";
		}else if(pw1!=pw2){
			document.getElementById('checkPwd').style.color = "red";
			document.getElementById("memberInsertBtn").disabled = true;
			document.getElementById('checkPwd').innerHTML = "비밀번호가 동일하지 않습니다.";
		}else if(!pw1.match(regExp1)||!pw2.match(regExp1)){
			document.getElementById('checkPwd').style.color = "red";
			document.getElementById('checkPwd').innerHTML = "비밀번호는 영문,숫자 조합 8자 이상, 16자 이하입니다. ";
		}else if(pw1==pw2){
			document.getElementById('checkPwd').style.color = "#5e0231";
			document.getElementById("memberInsertBtn").disabled = false;
			document.getElementById('checkPwd').innerHTML = "비밀번호가 확인되었습니다.";
			chkPw = true;
		}
	}

function DuplicateIDCheck(comp){
	var m_email;
	m_email = comp.value;
	var regExp =/[0-9a-zA-Z][_0-9a-zA-Z-]*@[_0-9a-zA-Z-]+(\.[_0-9a-zA-Z-]+){1,2}$/;
	
	if (m_email == ''){
		$("#checkMsgID").html("이메일을 입력해주세요");
		return;
	}else if (!regForm.m_email.value.match(regExp) ) {
			$("#checkMsgID").html("<font class='crRed' >올바른 이메일이 아닙니다.</font>");
		   regForm.m_email.focus();
		   return;
	}
	else{
		$.ajax({
			type: "POST",
			url: "http://localhost:8080/boots_parkpark/member/emailValue",
			data: {"m_email" : m_email},
			dataType: "json",
			success:function(checkEmail){
				if(checkEmail == false){ //중복이면 false
					$("#checkMsgID").html("<font class='crRed' >이미 사용중입니다.</font>");
					chkID = false;
					document.getElementById("btnSubmit").disabled = true; 
					document.regForm.m_email.focus();
				}else if(checkEmail == true){ //중복이 아니면 true	
					$("#checkMsgID").html("사용할 수 있습니다.");
					document.getElementById("btnSubmit").disabled = false;
					chkID = true;
				}else{
					$("#checkMsgID").html("뭐야뭐야");
				}
			},error:function(){
				$("#checkMsgID").html("에러에러");
			}
			
		});

		chkAjaxID = true;
	}
}


function keyCodeCheckID(event,id) {
	if(event.keyCode == 13){
		DuplicateIDCheck(id);
	}
}


//회원가입정보 체크
function inputCheck(){
	//이름 확인
	if(document.regForm.name.value!=""){
    	chkName = true;
    }
	
	//약관 동의 확인
	if($("#agreeUse").is(":checked")){
    	chkAgree = true;
    }
	//개인정보취급방침 동의 확인
	if($("#agreePrivate").is(":checked")){
		chkAgreePrivate = true;
    }
	
	
    if(!chkID){
    	alert("이메일을 입력하세요");
    	return;
    }else if(chkAjaxID === false){
    	alert("이메일 중복확인을 해주세요")
    	return;
    }else if(!chkName){
    	alert("이름을 입력하세요");
    	return;
    }else if(!chkPw){
    	alert("암호가 올바르지 않습니다");
    	return;    
    }else if(!chkAgree){
		alert("이용약관에 동의해주세요");
		$("#agreeUse").focus();
		return;
    }else if(!chkAgreePrivate){
		alert("개인정보 취급 방침에 동의해주세요");
		$("#agreePrivate").focus();
		return;
    }else if(chkID === true && chkAjaxID === true && chkPw === true && chkName === true && chkAgree === true && chkAgreePrivate === true){
		alert("회원가입을 축하합니다!\npoint 5000점이 지급되었습니다.\n로그인해주세요!")
		document.regForm.submit();
		return true;
    }else{
    	alert("회원정보를 올바르게 입력하세요");
    }

}