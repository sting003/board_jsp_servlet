
<!--　すべての掲示板リストを確認する画面 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
  <%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
</head>
<body>
<div id="wrap" align="center">
<h1>Board List</h1>
<table class="list">
	<tr>
		<td colspan="5" style="border: white; text-align: right">
			<a href="BoardServlet?command=board_write_form">投稿物作成</a>
		</td>
	</tr>
	<tr>
		<th>番号</th>
		<th>タイトル</th>
		<th>作成者</th>
		<th>作成日</th>
		<th>Read Count</th>
	</tr>

 	 <c:forEach var="board" items="${boardList}">
		<tr class="record">
			<td>${board.num}</td>
			<td>
				<a href="BoardServlet?command=board_view&num=${board.num}">
					${board.title}
				</a>
			</td>
			<td>${board.name}</td>
			<td><fmt:formatDate value="${board.writedate}"/></td>
			<td>${board.readcount}</td>
		</tr>
	</c:forEach>
</table>
</div>
</body>
</html>