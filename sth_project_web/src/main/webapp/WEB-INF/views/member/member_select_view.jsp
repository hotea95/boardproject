<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 상세보기</title>
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
<h1>회원 상세보기</h1>
<table border="1">
<thead>
<tr>
<th>아이디</th><th>비밀번호</th><th>이름</th><th>이메일</th><th>전화번호</th><th>생일</th>
</tr>
</thead>
<tbody>
<tr>
<td>${memberDTO.id}</td>
<td>${memberDTO.pwd}</td>
<td>${memberDTO.name}</td>
<td>${memberDTO.email}</td>
<td>${memberDTO.phone}</td>
<td>${memberDTO.birth}</td>
</tr>
</tbody>
</table>
<a href="./MemberSelect">회원 목록</a>
<a href="./MemberUpdate?id=${memberDTO.id}">회원 수정</a>
<a href="./MemberDelete?id=${memberDTO.id}">회원 삭제</a>
</body>
</html>