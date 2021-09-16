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
<title>�Խù� ����Ʈ</title>
</head>
<body>
	<h1>�Խù� ����Ʈ</h1>
		
	<table border="1">
<!-- <colgroup>
		<col width="100"/>
		<col width="200"/>
		<col />
	</colgroup> -->
 	<thead>
		<tr>
			<th>��ȣ</th>
			<th>��¥</th>
			<th>����</th>
			<th>����</th>
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
				<a href="doDelete?id=<%=articleRow.get("id") %>">�����ϱ�</a>
				</td>
			</tr>
			</tbody>
			<%} %>
	</table>
</body>
</html>