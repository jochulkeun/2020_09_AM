<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    boolean isLogined = (boolean)request.getAttribute("isLogined");
    int loginedMemberId = (int)request.getAttribute("loginedMemberId");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����������</title>
</head>
<body>
	<h1>����������</h1>
	
	<%
	if(isLogined)
	{%>
		<div>
		<%=loginedMemberId %>�� ȸ���� ȯ���մϴ�.
		<a href="../member/doLogout">�α׾ƿ�</a>
		</div>
	<%}%>
	
	<%
	if(!isLogined)
	{%>
		<div><a href="../member/Login">�α���</a>
		</div>
	<%}%>
	
	<div><a href="../article/list">�Խù� ����Ʈ</a></div>
	<div><a href="../member/Join">ȸ������</a></div>
	
</body>
</html>