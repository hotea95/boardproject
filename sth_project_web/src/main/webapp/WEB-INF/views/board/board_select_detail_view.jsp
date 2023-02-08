<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 상세보기</title>
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
<h1>게시판 상세보기</h1>
<table border="1">
<thead>
<tr>
<th>번호</th><th>제목</th><th>내용</th><th>날짜</th>
</tr>
</thead>
<tbody>
<tr>
<td>${boardDTO.bnum}</td>
<td>${boardDTO.btitle}</td>
<td>${boardDTO.bcontent}</td>
<td>${boardDTO.bdate}</td>
</tr>
</tbody>
</table>
<a href="./BoardSelect">게시판 목록</a>
<a href="./BoardUpdate?bnum=${boardDTO.bnum}">게시판 수정</a>
<a href="./BoardDelete?bnum=${boardDTO.bnum}">게시판 삭제</a>
</body>
</html>