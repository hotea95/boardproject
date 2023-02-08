<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 입력</title>
<c:forEach var="list" items="${list}">
<c:if test="${list.id==memberDTO.id }">
<script type="text/javascript">
alert("입력하신 ${memberDTO.id}는 존재합니다 다시 입력하세요.");
location.href="./MemberInsert";
</script>
</c:if>
</c:forEach>
</head>
<body>
<script type="text/javascript">
alert("입력하신 ${memberDTO.id}의 아이디를 등록하였습니다.")
location.href="./MemberSelect"
</script>
</body>
</html>