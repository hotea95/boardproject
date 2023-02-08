<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min_4.5.0.css">
<script src="./js/bootstrap.min_4.5.0.js" type="text/javascript"></script>
<script type="text/javascript">
function checks() {
	var id = RegExp(/^[a-zA-Z0-9]{4,12}$/);
	var pwd = RegExp(/^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/);
	var name = RegExp(/^[가-힣]+$/);
	var email = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
// 	var phone = RegExp(/^[0-9]{10,11}$/);
	var phone = RegExp(/^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$/);
	var birth = RegExp(/^(19[0-9][0-9]|20\d{2})-(0[0-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/);
	if($("#id").val() == "") {
		alert("아이디 입력바랍니다.");
		$("#id").focus();
		return false;
	}
	
	  if(!id.test($("#id").val())){
	        alert("아이디를 숫자와 영문으로 작성해주시고 4~12글자로 작성해주세요");
	        $("#id").val("");
	        $("#id").focus();
	        return false;
	      }
	  
	  if($("#pwd").val() == ""){
	        alert("비밀번호 입력바랍니다");
	        $("#pwd").focus();
	        return false;
	      }
	  
	  if(!pwd.test($("#pwd").val())){
	        alert("비밀번호를 숫자와 영문 특수문자 모두 사용해주세요. 8~15글자");
	        $("#pwd").val("");
	        $("#pwd").focus();
	        return false;
	      }
	  
	  if($("#pwd").val() != $("#pwd2").val()){
          alert("비밀번호가 상이합니다");
          $("#pwd").val("");
          $("#pwd2").val("");
          $("#pwd").focus();
          return false;
      }
	  
	  if($("#name").val() == ""){
	        alert("이름을 입력해주세요");
	        $("#name").focus();
	        return false;
	      }
	  
	  if(!name.test($("#name").val())){
	        alert("이름을 한글로 작성해주세요.");
	        $("#name").val("");
	        $("#name").focus();
	        return false;
	      }
	  
	  if($("#email").val() == ""){
	        alert("이메일을 입력해주세요");
	        $("#email").focus();
	        return false;
	      }
	  
	  if(!email.test($("#email").val())){
	        alert("이메일형식에 맞게 입력해주세요")
	        $("#email").val("");
	        $("#email").focus();
	        return false;
	      }
	  
	  if($("#phone").val() == ""){
	        alert("번호를 입력해주세요");
	        $("#phone").focus();
	        return false;
	      }
	  
	  if(!phone.test($("#phone").val())){
	        alert("번호 형식에 맞게 -를 적어서 작성해주세요.")
	        $("#phone").val("");
	        $("#phone").focus();
	        return false;
	      }
	  
	  if($("#birth").val() == ""){
	        alert("생년월일를 입력해주세요");
	        $("#birth").focus();
	        return false;
	      }
	  
	  if(!birth.test($("#birth").val())){
	        alert("생년월일을 8자리로 작성해주세요(-포함)")
	        $("#birth").val("");
	        $("#birth").focus();
	        return false;
	      }
	  
}
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
<h1>회원 정보 수정</h1>
<form action="./MemberUpdate" method="post" onsubmit="return checks()">
<fieldset>
<label for="id">아이디</label>
<input type="text" name="id" id="id" value="${memberDTO.id}" readonly="readonly"> <br>
<label for="pwd">비밀번호</label>
<input type="text" name="pwd" id="pwd" value="${memberDTO.pwd}"> <br>
<label for="pwd2">비밀번호 확인</label>
<input type="text" name="pwd2" id="pwd2"><br>
<label for="name">이름</label>
<input type="text" name="name" id="name" value="${memberDTO.name}"> <br>
<label for="email">이메일</label>
<input type="text" name="email" id="email" value="${memberDTO.email}"><br>
<label for="phone">전화번호</label>
<input type="text" name="phone" id="phone" value="${memberDTO.phone}"> <br>
<label for="birth">생일</label>
<input type="text" name="birth" id="birth" value="${memberDTO.birth}"> <br>
<button type="submit" class="btn btn-info">등록</button>
<button type="reset" class="btn btn-info" onclick="location.href='./MemberSelect'">취소</button>
</fieldset>
</form>
<a href="./MemberSelect">회원 목록</a>
<a href="./MemberInsert">회원 등록</a>
<a href="./MemberDelete">회원 삭제</a>
</body>
</html>