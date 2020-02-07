<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<body>
	<button type="button" id="btn">크기변경</button>
	<button type="button" id="btn2">크기변경2</button>
	
	<img src="../images/Chrysanthemum.jpg" id="imgSample">
	<script>
		//bind 변수		
		/* $("#btn").bind("click", function(){
				$("imgSample").width("100px"); //width를 100으로 변경
			}) 
			
		//click 함수
			$("#btn").click(function() {
				var w = $("#imgSample").css("width");
				//$("#imgSample").width("100px"); //width를 100으로 지정

				$("#imgSample").width(parseInt(w) - 100); //점점

			});*/
			
		//on 함수
		$(document).on("click", "#btn", function() {
			$("#imgSample").width(400);
		});
		
		$("#btn2").on("click", function(){
			$("#btn").click();
		})
		
	</script>

</body>
</html>