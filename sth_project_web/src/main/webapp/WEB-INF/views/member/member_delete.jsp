<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 삭제</title>
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min_4.5.0.css">
<script src="./js/bootstrap.min_4.5.0.js" type="text/javascript"></script>
</head>
<body>
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
<h1>회원 정보 삭제</h1>
<form method="post" action="./MemberDelete">
<fieldset>
<label for="id">아이디</label>
<input type="text" name="id" id="id" value="${param.id}" readonly="readonly">
 <button type="submit" class="btn btn-info">삭제</button>
 <button type="reset" class="btn btn-info" onclick="location.href='./MemberSelect'">취소</button>
</fieldset>
</form>
</body>
<a href="./MemberSelect">회원 목록</a>
<a href="./MemberInsert">회원 입력</a>
<a href="./MemberUpdate">회원 수정</a>
</html>