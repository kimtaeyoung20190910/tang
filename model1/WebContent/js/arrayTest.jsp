<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
img {
	width: 100px;
}
</style>
<script>
	window.onload = function() {
		//모든 이미지의 alt 속성만 div 출력
		var imgArr = document.getElementsByTagName("img");
		console.log(imgArr);
		var text = "";
		var i;
		for (i = 0; i < imgArr.length; i++) {
			text += imgArr[i].alt + "<br>";
		}
		document.getElementById("result").innerHTML = text;
	}
</script>
</head>
<body>
	<img src="../images/Chrysanthemum.jpg" alt="국화">
	<img src="../images/Desert.jpg" alt="사막">
	<img src="../images/Penguins.jpg" alt="펭귄">
	<div id="result"></div>
</body>
</html>