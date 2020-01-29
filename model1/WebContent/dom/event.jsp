<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	window.addEventListener("load", init);
	function init() {
		//이벤트 지정
		divItem.addEventListener("click", function() {
			alert('div');
		})
		btn.addEventListener("click", function(e) {
			alert('btn');
			e.stopPropagation();
			
		})
	}
</script>
<body>
	<div id="divItem">
		<button type="button" id="btn">button</button>
	</div>
</body>
</html>