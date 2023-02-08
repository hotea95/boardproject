<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 등록</title>
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min_4.5.0.css">
<script src="./js/bootstrap.min_4.5.0.js" type="text/javascript"></script>
<script type="text/javascript">
$(function() {
    $("#button").click(function() {
       var btitle = $("#btitle").val();
        var bcontent = $("#bcontent").val();
        if (btitle == "") {
          alert("제목을 입력하세요.");
          $("#btitle").focus();
          return false;
       }
        if (bcontent == "") {
          alert("내용을 입력하세요.");
          $("#bcontent").focus();
          return false;
       }
    });
 });
</script>
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
<h1>게시물 등록</h1>
<form method="post" action="./BoardInsert">
<fieldset>
<label for="btitle">게시물 제목</label>
<input type="text" name="btitle" id="btitle"> <br>
<label for="btitle">게시물 내용</label>
<textarea rows="5" cols="50" name="bcontent" id="bcontent"></textarea> <br>
<button type="submit" class="btn btn-info" id="button">등록</button>
<button type="reset" class="btn btn-info" onclick="location.href='./BoardSelect'">취소</button>
</fieldset>
</form>
<a href="./BoardSelect">게시물 목록</a>
</body>
</html>