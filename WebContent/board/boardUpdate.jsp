
<!--　該当の投稿物の詳細情報を修正する画面 -->

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
		<h1>投稿物修正</h1>
		<form name="frm" method="post" action="BoardServlet">
			<input type="hidden" name="command" value="board_update"> <input
				type="hidden" name="num" value="${board.num }">
			<table>
				<tr>
					<th>作成者</th>
					<td><input type="text" size="12" name="name"
						value="${board.name }">* 必須</td>
				</tr>
				<tr>
					<th>パスワード</th>
					<td><input type="password" size="12" name="pass"></td>
				</tr>
				<tr>
					<th>email</th>
					<td><input type="text" size="40" maxlength="50" name="email"
						value="${board.email }"></td>
				</tr>
				<tr>
					<th>タイトル</th>
					<td><input type="text" size="70" name="title"
						value="${board.title }"></td>
				</tr>
				<tr>
					<th>内容</th>
					<td><textarea cols="70" rows="15" name="content">value="${board.content}</textarea>
					</td>
				</tr>
			</table>
			<br>
			<br> <input type="submit" value="登録"
				onclick="return boardCheck()"> <input type="reset"
				value="reset"> <input type="button" value="Board Listに戻る"
				onclick="location.href='BoardServlet?command=board_list'">
		</form>
	</div>
</body>
</html>