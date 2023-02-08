<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 입력</title>
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min_4.5.0.css">
<script src="./js/bootstrap.min_4.5.0.js" type="text/javascript"></script>
<c:forEach var="list" items="${list}">
<c:if test="${list.bnum==boardDTO.bnum}">
<script type="text/javascript">
alert("입력하신 ${boardDTO.bnum}번의 게시물이 존재합니다. 다시 입력해주세요.");
location.href="./BoardInsert";
</script>
</c:if>
</c:forEach>
</head>
<body>
<script type="text/javascript">
alert("게시물을 등록하였습니다.")
location.href="./BoardSelect"
</script>
</body>
</html>