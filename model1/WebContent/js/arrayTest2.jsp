<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="text" id="no">
	<input type="text" id="username">
	<button type="button" id="btnAdd">추가</button>
	<script>
		btnAdd.addEventListener("click", funcAdd);
		var arr = []; //Arraylist
		function funcAdd() {
			//
			let obj = {}; //객체 생성 = dto
			obj.no = no.value
			obj.username = username.value
			//배열에 추가
			arr.push(obj)
			console.log(JSON.stringify(arr));
		}
	</script>
</body>
</html>