<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <style>
        body {
            font-size: 14px;
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
        }

        .log {
            width: 400px;
            height: 350px;
						margin: auto; /* 수평 가운데 정렬 */
				    position: absolute;
				    top: 0; bottom: 400px; left: 0; right: 0; /* 수직 가운데 정렬 */
            padding: 40px;
            box-sizing: border-box;
            border: 1px solid #ddd;
            border-radius: 6px;
        }

        .log h2 {
            font-size: 24px;
            color: #6A24FE;
            margin-bottom: 20px;
        }

        .log input[type="text"],
        .log input[type="password"] {
            width: 100%;
            height: 48px;
            padding: 0 10px;
            box-sizing: border-box;
            margin-bottom: 16px;
            border-radius: 6px;
            background-color: #F8F8F8;
        }

        #btn {
            color: #fff;
            font-size: 16px;
            background-color: #6A24FE;
            margin-top: 20px;
            color: black;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #0074d9;
            color: #ffffff;
            text-decoration: none;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .error-message {
            color: red;
            font-size: 16px;
            margin-top: 10px;
        }

        /* 버튼에 호버 효과를 추가합니다. */
        .button:hover {
            background-color: #0056b3; /* 호버 시 배경색 변경 */
        }

        .error-message {
            color: red;
            font-size: 16px;
            margin-top: 10px;
        }

       .modal {
        display: none;
        position: fixed;
        top: 40%;
        left: 50%;
        transform: translate(-50%, -50%);
        background-color: rgba(173, 216, 230, 0.5); /* 하늘색 배경 */
        justify-content: center;
        align-items: center;
    }

    .modal-content {
        background-color: #fff;
        padding: 30px; /* 내용물 크기 조정 */
        border-radius: 6px;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        width: 500px;
        height: 300px;
        margin: 0 auto;
    }

        .modal h3 {
            text-align: center;
            margin-top: 0;
        }

        .close {
            float: right;
            font-size: 20px;
            cursor: pointer;
        }
        .findID, .findPW{
        	cursor: pointer;
	        text-decoration: underline;
	        font-family: 'HakgyoansimWoojuR';
	        font-size: 14px;
	        color: black;
	        display: inline-block; /* 인라인 요소를 블록 요소로 변경하여 중앙 정렬 적용 */
	        
        }
        #findUser{
        	margin-left: 80px;
    			margin-top: 20px;
        }
				.btnSubmit {
				    margin-left: 60px;
				}
				.data{
					font-size: 25px; 
					font-family: 'HakgyoansimWoojuR';
					text-decoration: underline;
					font-weight: bold;
				}
				.p3{
					font-size: 20px;
				}
				.q3{
					font-size: 20px;
				}
    </style>
</head>
<body>
<form id="frmLogin" method="post" action="/doLogin">
    <div class="log">
        <h2>로그인</h2><input type="checkbox" id="auto">로그인저장
        <input type="text" id="loginid" name="loginid" placeholder="로그인 아이디" autofocus>
        <input type="password" id="loginpw" name="loginpw" placeholder="패스워드">
        <div class="btnSubmit">
        	<input type="submit" id="btnSubmit" value="로그인" class="button">&nbsp;&nbsp;<a href="/signup" class="button">회원가입</a>
        </div>
        <c:forEach items="${member}" var="member">
           <input type="hidden" name="name" value="${member.name}">
        </c:forEach>
        <div id="findUser">
            <a class="findID" id="findID">아이디찾기</a> / 
            <a class="findPW" id="findPW">비밀번호찾기</a>
        </div>
    </div>
    <c:if test="${loginFailed}">
        <script>
            // 아이디 혹은 비밀번호가 올바르지 않을 때 메시지를 표시합니다.
            alert("아이디 혹은 비밀번호를 확인하세요.");
        </script>
    </c:if>
</form>
<div id="idModal" class="modal">
    <div class="modal-content">
        <span class="close" id="closeIdModal">&times;</span>
        <h3>아이디 찾기</h3>
        <!-- 아이디 찾기 내용 -->
        <br><hr/><br>
        <div id="p1">
	        <p>본인확인을 위해 가입당시 입력한</p>
	        <p>이메일과 이름, 전화번호를 입력해주세요</p>
        </div><br>
        <div class="findInput" id="findInput">
        		<div id="p2">
                <div class="c">
                    <label class="lb">이메일</label>&nbsp;&nbsp;
                    <input type="text" name="findEmailID" id="findEmailID" placeholder="아이디@emample.com">
                </div>
                <div class="c">
                    <label class="lb">이름</label>&nbsp;&nbsp;
                    <input type="text" name="findNameID" id="findNameID" placeholder="홍길동">
                </div>
                <div class="c">
                    <label class="lb">전화번호</label>&nbsp;&nbsp;
                    <input type="text" name="findMobileID" id="findMobileID" placeholder="01055555555">
                </div>
                <br>
                <button type="button" id="rollbackID" class="hover5">취소</button>
                <input type="button" id="subModalID" value="완료" class="hover4">&nbsp;
            </div>    
            <div id="serchID">
            	
            </div>
        </div>
    </div>
</div>
<div id="passwordModal" class="modal">
    <div class="modal-content">
        <span class="close" id="closePasswordModal">&times;</span>
        <h3>비밀번호 찾기</h3>
        <!-- 비밀번호 찾기 내용 -->
        <br><hr/><br>
        <div id="q1">
        <p>본인확인을 위해 가입당시 입력한</p>
        <p>아이디와 이름, 전화번호를 입력해주세요</p>
        </div><br>
        <div class="findInput" id="findInput">
        		<div id="q2">
                <div class="c">
                    <label class="lb">아이디</label>&nbsp;&nbsp;
                    <input type="text" name="findUseridPW" id="findUseridPW" placeholder="아이디">
                </div>
                <div class="c">
                    <label class="lb">이름</label>&nbsp;&nbsp;
                    <input type="text" name="findNamePW" id="findNamePW" placeholder="홍길동">
                </div>
                <div class="c">
                    <label class="lb">전화번호</label>&nbsp;&nbsp;
                    <input type="text" name="findMobilePW" id="findMobilePW" placeholder="01055555555">
                </div>
                <br>
                <button type="button" id="rollbackPW" class="hover5">취소</button>
                <input type="button" id="subModalPW" value="완료" class="hover4">&nbsp;
            </div>
            <div id="serchPW">
            
            </div>
        </div>
    </div>
</div>
<script src="http://code.jquery.com/jquery-Latest.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<script>
    $(document).on('submit', '#frmLogin', function() {
        if ($('#loginid').val() === '' || $('#loginpw').val() === '') {
            alert('아이디 혹은 비밀번호를 입력해주세요');
            return false;
        }
        $.post('/doLogin',{userid:$('#loginid').val(),passcode:$('#loginpw').val()},function(data){
            if (data == '0') { // 로그인 성공
                if ($('#auto').prop('checked') == true) {
                    $.cookie('userid',$('#loginid').val());
                    $.cookie('passcode',$('#loginpw').val());
                }
            } else {// 실패 
							console.log("쿠키저장 실패");
            }
        },'json')
    });
    $(document).ready(function () {
        var useridCookie = $.cookie('userid');
        var passcodeCookie = $.cookie('passcode');
        console.log("userid 쿠키=" + useridCookie);
        console.log("passcode 쿠키=" + passcodeCookie);

        

        if (useridCookie != null && passcodeCookie != null) {
        		$('#loginid').val(useridCookie);
          	$('#loginpw').val(passcodeCookie);
        }
    });

    //----------------------

    $(document).ready(function() {
        // 아이디 찾기 모달 열기
        $('#findID').click(function() {
          $('#idModal').css('display', 'block');
					$('#findEmailID').val('');
			    $('#findNameID').val('');
			    $('#findMobileID').val('');
        });
        // 아이디 찾기 모달 닫기
        $('#closeIdModal').click(function() {
        	$('#serchID').empty();
        	$('#p1').show();
					$('#p2').show();
          $('#idModal').css('display', 'none');
        });
        // 아이디 찾기 모달 내 취소 버튼 클릭 시 닫기
        $('#rollbackID').click(function () {
        	$('#serchID').empty();
        	$('#p1').show();
					$('#p2').show();
          $('#idModal').css('display', 'none');
        });

        // 비밀번호 찾기 모달 열기
        $('#findPW').click(function() {
          $('#passwordModal').css('display', 'block');
        	$('#findUseridPW').val('');
			    $('#findNamePW').val('');
			    $('#findMobilePW').val('');
        });
        // 비밀번호 찾기 모달 닫기
        $('#closePasswordModal').click(function() {
        	$('#serchPW').empty();
        	$('#q1').show();
					$('#q2').show();
         	$('#passwordModal').css('display', 'none');
        });
        // 비밀번호 찾기 모달 내 취소 버튼 클릭 시 닫기
        $('#rollbackPW').click(function () {
        	$('#serchPW').empty();
        	$('#q1').show();
					$('#q2').show();
          $('#passwordModal').css('display', 'none');
        });
        
    });
    
    $(document).on('click','#subModalID',function(){    
    	console.log('아이디 찾는중')
    	var email = $('#findEmailID').val();
    	var name = $('#findNameID').val();
    	var mobile = $('#findMobileID').val();
    	$.ajax({
    		url:'/findID',
    		type:'post',
    		data: {email:email,name:name,mobile:mobile},
    		datatype: 'text',
    		success: function(data){
    			console.log(data);
    			$('#serchID').empty();
    			$('#p1').hide();
    			$('#p2').hide();
    			i = "<span class='p3'>회원님의 아이디는 </span><span class='data'>"+data+"</span><span class='p3'> 입니다</span><br>"
    					+"<button type='button' id='rollbackID1' class='hover5'>닫기</button>";
    			console.log(i);
    			$("#serchID").append(i);
    			$('#rollbackID1').click(function () {			//취소버튼 실행
    				$('#serchID').empty();
    				$('#p1').show();
    				$('#p2').show();
    	      $('#idModal').css('display', 'none');
    	     });
    		}
    	})
    })
    $(document).on('click','#subModalPW',function(){
    	console.log('비밀번호 찾는중');
    	var userid = $('#findUseridPW').val();
    	var name = $('#findNamePW').val();
    	var mobile = $('#findMobilePW').val();
    	$.ajax({
    		url:'/findPW',
    		type:'post',
    		data:{userid:userid,name:name,mobile:mobile},
    		datatype:'text',
    		success:function(data){
    			console.log(data);
    			$('#serchPW').empty();
    			$('#q1').hide();
    			$('#q2').hide();
    			j = "<span class='q3'>회원님의 비밀번호는 </span><span class='data'>"+data+"</span><span class=q3'> 입니다</span><br>"
							+"<button type='button' id='rollbackPW1' class='hover5'>닫기</button>";
					console.log(j);
					$('#serchPW').append(j);
					$('#rollbackPW1').click(function () {
						$('#serchPW').empty();
						$('#q1').show();
						$('#q2').show();
		        $('#passwordModal').css('display', 'none');
		      });
    		}
    	})
    })
</script>
</body>
</html>
