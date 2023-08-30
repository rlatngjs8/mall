<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<meta charset="UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<title>Insert title here</title>
</head>
<style>


body {

    text-align: center;
}


.second {

    display: flex;
    list-style: none;
    justify-content: center;
    margin: 20px 0;
    padding: 0;
    
}


.card {

 display: flex;
        flex-direction: column;
        padding: 10px;
        margin: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease;
        width:500px;
        height:400px;
        
}


/*
.card img css 부분 수정
*/
.card img {
    max-width: 90%;
    height: 250px;
    width: 300x;
    margin-right: 10px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

</style>
<body>

<%@include file="header.jsp" %>












<div class="second">
    
	<!-- 기존 card라는 class name을 card1으로 변경 및 이미지 작업중입니다. -->
    <div class="card">
         <a href="/#"><img src="img/${rooms[15].img1}" alt="이미지 6"></a>
		
		<p id="demo">${rooms[15].space_name}

	
    </div>
    
      <div class="card">
         <a href="/#"><img src="img/${rooms[16].img1}" alt="이미지 6"></a>
         <br>
        <p id="demo">${rooms[16].space_name}

    </div>
    
      <div class="card">
         <a href="/#"><img src="img/${rooms[17].img1}" alt="이미지 6"></a>
         <br>
        <p id="demo">${rooms[17].space_name}
    </div>
    </div>


	<div class="second">
	
	
	 <div class="card">
         <a href="/#"><img src="img/${rooms[18].img1}" alt="이미지 6"></a>
         <br>
        <p id="demo">${rooms[18].space_name }
        
    </div>
    
      <div class="card">
         <a href="/#"><img src="img/${rooms[19].img1}" alt="이미지 6"></a>
         <br>
        <p id="demo">${rooms[19].space_name }
    </div>
    
</div>
		

	





<%@include file="footer.jsp" %>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>














</script>





</html>