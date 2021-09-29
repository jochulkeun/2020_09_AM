
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h1>회원가입</h1>
	
	
	
	<form action="doJoin" method="post">
	
	
	<div>아이디    : <input autocomplete="off" placeholder="아이디를 입력해주세요." name ="loginId" type="text" /></div>
	<div>비밀번호: <input autocomplete="off" placeholder="비밀번호를 입력해주세요." name ="loginPw" type="text" /></div>
	<div>이름  : <input autocomplete="off" placeholder="이름을 입력해주세요." name ="name" type="text"/></div>
	<div>
	<!--<input type="submit" value="작성" /> -->
	<button type="submit">회원가입</button>
	<a href="list">리스트</a>
	<a href="../home/main">메인으로</a>
	</div>
	</form>
</body>
</html>