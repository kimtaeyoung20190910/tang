<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Position.jsp</title>
<style>
body {
	font-size: 12px;
}

div {
	width: 400px;
	height: 400px;
	border: 1px solid blue;
}

div.b {
	position: fixed;
	right: 350px;
	bottom: 350px;
	background-color: yellow;
	z-index: 3;
}
div.a {
	font-size: 4em;
	padding-top: 100px;
	margin: 100px;
	border: 10px solid;
	z-index: 3;
}

</style>
</head>
<body>
	<div class="a b">aaaa</div>
	<div class="b">b</div>
	<div class="c">c</div>
</body>
</html>