<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	//json 객체
	let BoardDTO = { no: 1, poster: "김태영", subject: "첫번째글." }
	
	//스트링 배열
	let strArr = ["딸기","바나냐","맹고"];
	
	//객체 배열
	let boardArr = [{ no: 1, poster: "김태영", subject: "첫번째글." },
		{ no: 2, poster: "투태영", subject: "두번째글." },
		{ no: 3, poster: "태영", subject: "세번째글." }];
	
	//BoardDTO의 작성자 출력
	document.write(BoardDTO.poster + "<br>");
	//strArr 두번째 과일 출력
	document.write(strArr[1] + "<br>");
	//boardArr의 세번째 게시글 제목 출력
	document.write(boardArr[2].subject)
</script>
<body>
<div id="result">

</div>
</body>
</html>