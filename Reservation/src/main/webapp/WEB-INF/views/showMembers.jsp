<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f7f7f7;
    margin: 0;
    padding: 0;
  }
  
       @font-face {
    font-family: 'SBAggroB';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/SBAggroB.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
  
  h1 {
    text-align: center;
    margin-top: 20px;
    font-family: 'SBAggroB';
  }
  #header {
    display: flex; /* flex 속성 추가 */
    justify-content: space-between; /* 좌우 정렬 */
    align-items: center; /* 세로 중앙 정렬 */
    padding: 10px;
  }
  
.btnDelete {
	box-shadow:inset 0px 1px 0px 0px #cf866c;
	background:linear-gradient(to bottom, #ff3700 5%, #bc3315 100%);
	background-color:#ff3700;
	border-radius:10px;
	border:1px solid #942911;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:12px;
	padding:6px 8px;
	text-decoration:none;
	text-shadow:0px 1px 0px #854629;
	margin-rightt:20px;
	margin-top:10px;
}
.btnDelete:hover {
	background:linear-gradient(to bottom, #bc3315 5%, #ff3700 100%);
	background-color:#bc3315;
}
.btnDelete:active {
	position:relative;
	top:1px;
}

.btnPrev {
	box-shadow:inset 0px 1px 0px 0px #9fb4f2;
	background:linear-gradient(to bottom, #7892c2 5%, #476e9e 100%);
	background-color:#7892c2;
	border-radius:10px;
	border:1px solid #4e6096;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:12px;
	padding:6px 8px;
	text-decoration:none;
	text-shadow:0px 1px 0px #283966;
	margin-left:20px;
	margin-top:10px;
}
.btnPrev:hover {
	background:linear-gradient(to bottom, #476e9e 5%, #7892c2 100%);
	background-color:#476e9e;
}
.btnPrev:active {
	position:relative;
	top:1px;
}




 
  img {
    width: 75px;
    height: 75px;
  }
  table {
    width: 80%;
    margin: 0 auto;
    border-collapse: collapse;
    margin-top: 20px;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }
  
  	@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
  
  
  
  th, td {
    padding: 10px;
    text-align: center;
    border-bottom: 1px solid #ddd;
    font-family: 'GmarketSansMedium';
  }
  th {
    background-color: #f2f2f2;
    font-weight: bold;
  }
  tr:hover {
    background-color: #f5f5f5;
  }
  .selected-row {
    background-color: #e0e0e0; /* 선택된 행의 배경색 */
  }
</style>
</head>
<body>
<h1>회원정보 조회</h1>


<div id="header">
  <button id="prevMenu" class="btnPrev">이전 메뉴</button>
  <button id="btnDelete" class="btnDelete">회원정보 삭제</button>
</div>



<table>
<thead>
  <tr>
    <th>회원번호</th>
    <th>로그인아이디</th>
    <th>비밀번호</th>
    <th>이름</th>
    <th>생년월일</th>
    <th>주소</th>
    <th>이메일</th>
    <th>전화번호</th>
    <th>가입시각</th>
  </tr>
</thead>
<tbody id="tblMembers">
<c:forEach items="${blist}" var="bpost">
  <tr data-seqno="${bpost.num}" data-num="${bpost.num}">
    <td>${bpost.num}</td>
    <td>${bpost.userid}</td>
    <td>${bpost.passcode}</td>
    <td>${bpost.name}</td>
    <td>${bpost.birthday}</td>
    <td>${bpost.address}</td>
    <td>${bpost.email}</td>
    <td>${bpost.mobile}</td>
    <td>${bpost.created}</td>
  </tr>
</c:forEach>
</tbody>
</table>
<table>
<tr><td align="left">${pagestr}</td></tr>
</table>
</body>
<script src="http://code.jquery.com/jquery-Latest.js"></script>
<script>
$(document).ready(function() {
		$(document).on('click', '#prevMenu', function(){
			window.location.href="/manager";
		})
	  // 테이블의 행을 클릭했을 때 선택된 행으로 스타일을 변경
	  $(document).on('click', '#tblMembers tr', function() {
	    var clickedRow = $(this);

	    // 이미 선택된 행을 원래 색상으로 되돌림
	    $('#tblMembers tr').removeClass('selected-row');

	    // 클릭한 행에 스타일을 적용하여 선택했음을 표시
	    clickedRow.addClass('selected-row');
	  });

	  // 'btnDelete' 버튼 클릭 시 선택된 행을 삭제
	  $(document).on('click', '#btnDelete', function() {
	    var selectedRow = $('#tblMembers tr.selected-row');

	    if (selectedRow.length === 0) {
	      alert("삭제할 회원을 선택하세요.");
	      return;
	    }

	    var confirmDelete = confirm("정말로 선택한 회원을 삭제하시겠습니까?");
	    if (confirmDelete) {
	    	var memberId = selectedRow.data('num'); // 선택한 행을 화면에서 제거
	    	console.log(memberId);
	    	$.ajax({
	    		url: '/memberDelete',
	    		data: {num: memberId},
	    		type: 'post',
	    		dataType: 'text',
	    		success: function(data){
	    			console.log("삭제성공");
	    			selectedRow.remove(); // 선택한 행을 화면에서 제거
	    		}
	    	})
	    }
	  });
	});
</script>
</html>