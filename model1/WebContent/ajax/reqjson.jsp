<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	window.addEventListener("load", function() {
		btn.addEventListener("click", loadDoc);
	});

	function loadDoc() {
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				var res = xhttp.responseText; //String
				var obj = JSON.parse(res);
				txtNo.value = obj.no;
				txtName.value = obj.name;
			}
		};

		xhttp.open("GET", "../GetJSON.do", true);
		xhttp.send();
	}
</script>
</head>
<body>
	<h3>ajax json연습</h3>
	<input id="txtNo">
	<input id="txtName">
	<button type="button" id="btn">요청</button>
</body>
</html>