<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
List<Map<String,Object>> articleRows = (List<Map<String,Object>>)request.getAttribute("articleRows");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시물 리스트</title>
</head>
<body>
	<h1>게시물 리스트</h1>
	<ul>
		<li><%=articleRows.get(0).get("id")%>번,<%=articleRows.get(0).get("regDate")%>,<%=(String)articleRows.get(0).get("title")%></li>
	</ul>
	
	<h1>게시물 리스트v2</h1>
	<ul>
		<% for(int i = 0; i < 3; i++){
			%>
		<li><%=articleRows.get(i).get("id")%>번,<%=articleRows.get(i).get("regDate")%>,<%=(String)articleRows.get(i).get("title")%></li>
			<%} %>
	</ul>
	
	<h1>게시물 리스트v3</h1>
	<ul>
		<% for(int i = 0; i < 3; i++){
			Map<String,Object> articleRow = articleRows.get(i);
			%>
		<li><%=articleRow.get("id")%>번,<%=articleRow.get("regDate")%>,<%=(String)articleRow.get("title")%></li>
			<%} %>
	</ul>
	
	<h1>게시물 리스트v4</h1>
	<ul>
		<% for(int i = 0; i < articleRows.size(); i++){
			Map<String,Object> articleRow = articleRows.get(i);
			%>
		<li><%=articleRow.get("id")%>번,<%=articleRow.get("regDate")%>,<%=(String)articleRow.get("title")%></li>
			<%} %>
	</ul>
	
	<h1>게시물 리스트v5</h1>
	<ul>
		<% for(Map<String,Object> articleRow : articleRows){
			
			%>
		<li><%=articleRow.get("id")%>번,<%=articleRow.get("regDate")%>,<%=(String)articleRow.get("title")%></li>
			<%} %>
	</ul>
</body>
</html>