<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 전체조회</title>
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
<h1>게시판 관리</h1>
<a href="./BoardInsert">게시물 작성</a>
<table border="1">
<thead>
<tr>
<th>번호</th><th>제목</th><th>내용</th><th>날짜</th>
</tr>
</thead>
<tbody>
<c:forEach var="list" items="${list}">
<tr>
<td>${list.bnum}</td>
<td>${list.btitle}</td>
<td>${list.bcontent}</td>
<td>${list.bdate}</td>
<td>
<a href="./BoardSelectDetail?bnum=${list.bnum}">게시판 상세보기</a>
</td>
</tr>
</c:forEach>
<c:if test="${empty list}">
<tr>
<td>등록된 게시물이 없습니다.</td>
</tr>
</c:if>
</tbody>
</table>
<a href="./BoardInsert">게시물 작성</a>
</body>
</html>