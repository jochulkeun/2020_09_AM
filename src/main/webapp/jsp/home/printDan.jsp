<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
int dan = 4;
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ ���</title>
</head>
<body>
	<div>==<%=dan %>��==</div>
	
	<%for (int i = 1; i <= 9; i++){%>
		<div><%=dan %>*<%=i %> = <%=dan * i %></div>
	<%} %>
</body>
</html>