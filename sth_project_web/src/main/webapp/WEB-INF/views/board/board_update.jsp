<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 수정</title>
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
<h1>게시물 수정</h1>
<form action="./BoardUpdate" method="post">
<fieldset>
<label for="bnum">번호</label>
<input type="text" name="bnum" id="bnum" value="${boardDTO.bnum}" readonly="readonly"> <br>
<label for="btitle">제목</label>
<input type="text" name="btitle" id="btitle" value="${boardDTO.btitle}"> <br>
<label for="bcontent">내용</label>
<textarea rows="5" cols="50" name="bcontent" id="bcontent">${boardDTO.bcontent}</textarea> <br>

<button type="submit" class="btn btn-info">등록</button>
<button type="reset" class="btn btn-info" onclick="location.href='./BoardSelect'">취소</button>
</fieldset>
</form>
<a href="./BoardSelect">게시물 목록</a>
<a href="./BoardInsert">게시물 목록</a>
<a href="./BoardDelete?bnum=${param.bnum}">게시물 삭제</a>
</body>
</html>