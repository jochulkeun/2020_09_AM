<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
List<Map<String,Object>> articleRows = (List<Map<String,Object>>)request.getAttribute("articleRows");
int cPage = (int)request.getAttribute("page");
int totalpage = (int)request.getAttribute("totalpage");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시물 리스트</title>
</head>
<body> 
	<h1>게시물 리스트</h1>
		
		<div>
			<a href="write">게시물 작성</a>
		</div>
		
	<table border="1">
<!-- <colgroup>
		<col width="100"/>
		<col width="200"/>
		<col />
	</colgroup> -->
 	<thead>
		<tr>
			<th>번호</th>
			<th>날짜</th>
			<th>제목</th>
			<th>삭제</th>
		</tr>
		</thead>
		<tbody>
		<% for(Map<String,Object> articleRow : articleRows){
			
			%>
			<tr>
				<td><%=articleRow.get("id") %></td>
				<td><%=articleRow.get("regDate") %></td>
				<td><a href="detail?id=<%=articleRow.get("id") %>"><%=articleRow.get("title") %></a></td>
				<td>
				<a href="doDelete?id=<%=articleRow.get("id") %>">삭제하기</a>
				</td>
			</tr>
			</tbody>
			<%} %>
	</table>
	<style type="text/css">
		.page > a.red{
		color:red;
		}
	</style>
	<div class="page">
		<%for(int i = 1; i <= totalpage; i++){
			%>
		<a class="<%=cPage == i ? "red": "" %>" href="list?page=<%=i%>"><%=i%></a>
		<%} %>
	</div>
</body>
</html>