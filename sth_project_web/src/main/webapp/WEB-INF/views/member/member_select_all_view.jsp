<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
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
<h1> 회원 가입</h1>
<table border="1">
<thead>
<tr>
<th>아이디</th><th>비밀번호</th><th>이름</th><th>이메일</th><th>전화번호</th><th>생일</th>
</tr>
</thead>
<tbody>
<c:forEach var="list" items="${list}">
<%-- <c:out value="${list.id}"/> --%>
<%-- <c:out value="${list.pwd}"/> --%>
<%-- <c:out value="${list.name}"/> --%>
<%-- <c:out value="${list.email}"/> --%>
<%-- <c:out value="${list.phone}"/> --%>
<%-- <c:out value="${list.birth}"/> --%>
<tr>
<td>${list.id}</td>
<td>${list.pwd}</td>
<td>${list.name}</td>
<td>${list.email}</td>
<td>${list.phone}</td>
<td>${list.birth}</td>
<td>
<a href="./MemberSelectDetail?id=${list.id}">
회원 상세보기
</a>
</td>
</tr>
</c:forEach>
<%-- <c:if test="${empty list}"> --%>
<!-- <tr> -->
<!-- <td>등록된 부서가 없습니다.</td> -->
<!-- </tr> -->
<%-- </c:if> --%>
</tbody>
</table>
<a href="./MemberInsert">회원 가입</a>
</body>
</html>