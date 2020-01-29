<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
window.addEventListener("load",init);

function init(){
	btn.addEventListener("click", function(){
		//div숨기기 : display="none"
		result.style.display="none";
	});
	
	btn.addEventListener("mouseover", function(){
		result.style.display="none";
	});
	
	btn.addEventListener("mouseout", function(){
		result.style.display="";
	});
	
	//이미지 에러시 대체 이미지 적용
	//=이미지의 src변경
	img1.addEventListener("error", function(){
		console.log("aaa");
		img1.src='../images/Penguins.jpg'
	})
	
}
</script>
</head>
<body>
	<button type="button" id="btn">숨기기</button>
	<div id="result">남산의 부장들 소개</div>
	<img id="img1" src="../images/Penguin.jpg"
	onerror="img1.src='../images/Penguins.jpg'">
</body>
</html>