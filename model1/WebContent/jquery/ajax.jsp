<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(function(){	//ready 이벤트 == window.load
	result.innerHTML = "로딩중...";
	$.ajax("./server/getName.jsp", 
			{ async:true 	//싱크(비동기여부) true/false -> //true(3초후에 실행)
			,beforeSend : function(){ }
			,cache : false 
		//	,data : { no:1 , id:'tang' }	//파라미터
 			,data : $("#frm").serialize()   //"no=1&name=tang"	
 			,dataType : "json" 			    //json으로 파싱(default-html)
		}) 
	.done(function(data){ result.innerHTML = data.name; }) //끝났을때 호출
	.fail(function(){})
	.always(function(){});
	console.log("ajax the end");
});	

</script>
</head>
<body>
<form id="frm" name="frm">
	<input name="no" value="">
	<input name="name" vaule="">
</form>
<div id="result"></div>
</body>
</html>