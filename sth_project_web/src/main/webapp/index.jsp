<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min_4.5.0.css">
<script src="./js/bootstrap.min_4.5.0.js" type="text/javascript"></script>
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>

</head>
<body>
<!-- <nav class="navbar navbar-expand-lg bg-body-tertiary"> -->
<!--   <div class="container-fluid"> -->
<!--     <a class="navbar-brand" href="#">신태호 홈페이지</a> -->
<!--     <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation"> -->
<!--       <span class="navbar-toggler-icon"></span> -->
<!--     </button> -->
<!--     <div class="collapse navbar-collapse" id="navbarNavAltMarkup"> -->
<!--       <div class="navbar-nav"> -->
<!--         <a class="nav-link active" aria-current="page" href="./home">Home</a> -->
<!--         <a class="nav-link" href="./BoardSelect">Board</a> -->
<!--       </div> -->
<!--     </div> -->
<!--   </div> -->
<!-- </nav> -->

<c:if test="${member == null}">
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">신태호 홈페이지</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link active" aria-current="page" href="./home">Home</a>
<!--         <a class="nav-link" href="./BoardSelect">Board</a> -->
      </div>
    </div>
  </div>
</nav>
<form action="./login" role="form" method="post" autocomplete="off">
<label for="id">아이디</label>
<input type="text" id="id" name="id">

<p>
<label for="pwd">비밀번호</label>
<input type="password" id="pwd" name="pwd">
</p>
<!-- <button type="button" onclick="location.href='./listPage?num=1'">페이징</button> -->
<button type="submit" class="btn btn-info" id="login">로그인</button>
<button type="button" class="btn btn-info" onclick="location.href='./MemberInsert'">회원가입</button>

</form>
</c:if>

<c:if test="${msg == false}">
<p>로그인에 실패하였습니다. 아이디 또는 패스워드를 다시 입력해주세요. </p>
</c:if>

<%-- <c:if test="${member != memberDTO}"> --%>
<!-- <p>로그인에 실패하였습니다. 아이디 또는 패스워드를 다시 입력해주세요. </p> -->
<%-- </c:if> --%>

<c:if test="${member != null}">
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">신태호 홈페이지</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link active" aria-current="page" href="./home">Home</a>
        <a class="nav-link" href="./BoardSelect">Board</a>
      </div>
    </div>
  </div>
</nav>
<p>${member.id}님 환영합니다.</p>
<button type="button" onclick="location.href='./logout'">로그아웃</button>
</c:if>

<c:if test="${member.id == 'admin'}">
<button type="button" onclick="location.href='./MemberSelect'">회원관리</button>
</c:if>
<c:if test="${member != null}">
<c:if test="${member.id != 'admin'}">
<button type="button" onclick="location.href='./MemberSelectDetail?id=${member.id}'">내정보</button>
</c:if>
</c:if>
</body>
</html>