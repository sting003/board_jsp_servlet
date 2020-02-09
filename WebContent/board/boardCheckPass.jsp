
<!--　投稿物登録する画面 -->

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
	<div align="center">
		<h1>パスワード確認</h1>
		<form name="frm" method="get" action="BoardServlet">
			<input type="hidden" name="command" value="board_check_pass">
			<input type="hidden" name="num" value="${param.num}">
			<table style="width: 80%">
				<tr>
					<th>パスワード</th>
					<td><input type="password" name="pass" size="20"></td>
				</tr>
			</table>
			<br> <input type="submit" value="確認"
				onclick="return passCheck()"> <br>
			<br>${message}
		</form>
	</div>
</body>
</html>