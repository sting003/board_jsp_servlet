
<!--　該当の投稿物の詳細情報を確認する画面 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>掲示板</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
<script type="text/javascript" src="script/board.js"></script>
</head>
<body>
	<div id="wrap" align="center">
		<h1>投稿物 詳細情報</h1>
		<table>
			<tr>
				<th>作成者</th>
				<td>${board.num }</td>
				<th>email</th>
				<td>${board.email }</td>
			</tr>
			<tr>
				<th>作成日</th><td><fmt:formatDate value="${board.writedate}"/></td>
				<th>read count</th>
				<td>${board.readcount }</td>
			</tr>
			<tr>
				<th>タイトル</th>
				<td colspan="3">${board.title }</td>
			</tr>
			<tr>
				<th>内容</th>
				<td colspan="3"><pre>${board.content }</pre></td>
			</tr>
		</table>
		<br>
		<br>
		<input type="button" value="投稿物を修正"
			onclick="open_win('BoardServlet?command=board_check_pass_form&num=${board.num}',
			'update')">
		<input type="button" value="投稿物を削除"
			onclick="open_win('BoardServlet?command=board_check_pass_form&num=${board.num}',
			'delete')">
		<input type="button" value="Board Listに戻る"
			onclick="location.href='BoardServlet?command=board_list'">
		<input type="button" value="投稿物を登録"
			onclick="location.href='BoardServlet?command=board_write_form'">
	</div>
</body>
</html>