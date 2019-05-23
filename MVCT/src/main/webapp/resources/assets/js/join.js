$(function() {
	$("#register").click(function(e) {
		if($("#m_id").val()==''){
			alert('id를 입력하세요');
            $("#inputId").focus();
            return false;
		}
		
		if($("#m_id").val() ==''){
            alert('아이디를 입력하세요');
            $("#inputId").focus();
            return false;
        }
	  
        if($("#m_pw").val() ==''){
            alert('비번를 입력하세요');
            $("#m_pw").focus();
            return false;
        }

        if($("#m_pwcheck").val() ==''){
            alert('비밀번호를 다시 한번 더 입력하세요');
            $("#m_pwcheck").focus();
            return false;
        }
        
        if($("#m_pw").val()!== $("#m_pwcheck").val()){
            alert('비밀번호를 둘다 동일하게 입력하세요');
            return false;
        }
        
        if($("#m_name").val() ==''){
            alert('이름을 입력하세요');
            $("#m_name").focus();
            return false;
        }
        
        if($("#m_birth").val() ==''){
            alert('생년월일을 입력하세요');
            $("#m_birth").focus();
            return false;
        }
        
        if($("#m_gender").val() ==''){
            alert('성별을 선택해주세요');
            $("#m_birth").focus();
            return false;
        }
        
		var email = $('#m_email').val();
        if(email == ''){
            alert('이메일을 입력하세요');
            $("#m_email").focus();
            return false;
        }

        if($("#m_ph").val() ==''){
            alert('휴대폰 번호를 입력하세요');
            $("#m_ph").focus();
            return false;
        }
        
        if($("#m_addr").val() ==''){
            alert('주소를 입력하세요');
            $("#m_addr").focus();
            return false;
        }
        
        if($("#agree_checkbox").val() ==''){
            alert('약관에 동의해주시기 바랍니다.');
            $("#agreecheckbox").focus();
            return false;
        }
        
	})
})
