<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>

footer {
  background-color: #272727;
  border-top: 1px solid #333;
}


footer .inner {
  padding: 40px 0 60px 0
}


footer .menu {
  display: flex;
  justify-content: center;
}


footer .menu li {
  position: relative;
}


footer .menu li::before {
  content: "";
  width: 3px;
  height: 3px;
  background-color: #555;
  position: absolute;
  top: 0;
  bottom: 0;
  right: -1px;
  margin: auto;
}


footer .menu li:last-child::before {
  display: none;
}


footer .menu li a {
  color: #ccc;
  font-size: 12px;
  font-weight: 700;
  padding: 15px;
  display: block;
}


footer .menu li a.green {
  color: #669900
}


footer .btn-group {
  margin-top: 20px;
  display: flex;
  justify-content: center;
}


footer .btn-group .btn {
  font-size: 12px;
  margin-right: 10px;
}


footer .btn-group .btn:last-child {
  margin-right: 0px;
}


footer .info {
  margin-top: 30px;
  text-align: center;
}


footer .info span {
  margin-right: 20px;
  color: #999;
  font-size: 12px;
}


footer .info span:last-child {
  margin-right: 0;
}


footer .copyright {
  color: #999;
  font-size: 12px;
  text-align: center;
  margin-top: 12px;
}


footer .logo {
  margin: 30px auto 0;
}



</style>




<body>


<div id="footer">


<footer>
  <div class="inner">
    <ul class="menu1">
      <li><a href="javascript:void(0)">개인정보처리방침</a></li>
      <li><a href="javascript:void(0)">영상정보처리기기 운영관리 방침</a></li>
      <li><a href="javascript:void(0)">홈페이지 이용약관</a></li>
      <li><a href="javascript:void(0)">위치정보 이용약관</a></li>
      <li><a href="javascript:void(0)">이용약관</a></li>
      <li><a href="javascript:void(0)">핫라인</a></li>
    </ul>

    <div class="btn-group">
      <a href="javascript:void(0)" class="btn btn--white">찾아오시는 길</a>
      <a href="javascript:void(0)" class="btn btn--white">신규입점제의</a>
      <a href="javascript:void(0)" class="btn btn--white">사이트 맵</a>
    </div>
    
    <div class="info">
      <span>사업자등록번호 213-23-12512</span>
      <span>(주)share place 대표이사 ㄱㄱㄱ</span>
      <span>TEL : 02) 2222-2222 / FAX : 02) 4242-2424</span>
      <span>개인정보 책임자 : 홍길동</span>
    </div>

    <p class="copyright">
      &copy; <span class="this-year"></span> Share place Company. All Rights Reseved.
    </p>
      <img src="" alt="" class="logo" />

  </div>
</footer>
</div>


</body>
</html>