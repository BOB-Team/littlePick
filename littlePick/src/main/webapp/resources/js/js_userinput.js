$(function(){
	//우편번호 api
	$('#address_btn').click(function(){
		new daum.Postcode({
	        oncomplete: function(data) {
	            
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('user_postcode').value = data.zonecode;
                document.getElementById("user_address").value = roadAddr;
              
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("user_address3").value = extraRoadAddr;
                } else {
                    document.getElementById("user_address3").value = '';
                }
            }
	
	    }).open();
	})
	
	
	
	
	
	
	// 사용자의 자료 입력여부를 검사하는 함수
	$('#confirm').click(function(){
    	if( $.trim($("#user_name").val()) == '' ){
            alert("이름을 입력해주세요.");
            $("#user_name").focus();
            return;
        }
    	
    	if( $.trim($("#user_email").val()) == '' ){
            alert("이메일을 입력해주세요.");
            $("#user_email").focus();
            return;
        }
    	
    	if($.trim($('#user_password').val())==''){
    		alert("비밀번호를 입력해주세요.");
    		$('#user_password').focus();
    		return;
    	}
    	
    	if($.trim($('#user_password').val()) != $.trim($('#user_password2').val())){
    		alert("비밀번호가 일치하지 않습니다.");
    		$('#user_password2').focus();
    		return;
    	}
    	
    	if( $.trim($("#user_nickname").val()) == '' ){
            alert("닉네임을 입력해주세요.");
            $("#user_nickname").focus();
            return;
        }
    	
    	if( $.trim($("#user_phone").val()) == '' ){
            alert("휴대폰번호를 입력해주세요.");
            $("#user_phone").focus();
            return;
        }
    	
    	if( $.trim($("#user_address").val()) == '' ){
            alert("주소를 입력해주세요.");
            $("#user_address").focus();
            return;
        }
    	
    	if( $.trim($("#user_birth").val()) == '' ){
            alert("생년월일을 입력해주세요.");
            $("#user_birth").focus();
            return;
        }
    	
    	let gender =  $(':radio[name="user_gender"]:checked').val();
    	
    	if(gender == null ){
            alert("성별을 선택해주세요.");
            return;
        }
       
        document.userinput.submit(); // 자료를 전송합니다.
	});
	
	//이메일 중복체크 // keyup 나중에 사용하지 않기 !!! 중복확인버튼 눌러서 한번에 확인  
	$('#user_email_btn').click(function(){
        $.ajax({
        	type:'post',
        	url:'emailCheck.do', //요청 부르기, MVC로 하는 거면 jsp나오면 안됨 !!
        	contentType: 'application/x-www-form-urlencoded;charset=UTF-8', //한글처리
        	data:{user_email: $('#user_email').val()},
        	success: function(result){
        		$('#emailCheckResult').text(result)
        		//text()/html()
        	}
        })
       
	})
	
	//닉네임 중복체크
	$('#user_nickname_btn').click(function(){
        $.ajax({
        	type:'post',
        	url:'nicknameCheck.do', //요청 부르기, MVC로 하는 거면 jsp나오면 안됨 !!
        	contentType: 'application/x-www-form-urlencoded;charset=UTF-8', //한글처리
        	data:{user_nickname: $('#user_nickname').val()},
        	success: function(result){
        		$('#nicknameCheckResult').text(result)
        		//text()/html()
        	}
        })
       
	})
})
	
	
	
	
	
	
	
	
	