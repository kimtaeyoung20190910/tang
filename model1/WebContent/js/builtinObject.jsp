<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	window.onload = init; //페이지가 로드된 후 실행
	function init() {
		let btn = document.getElementById("btnCheck");
		//btn.onclick = function(){};
		btn.addEventListener("click", function() {
			//document.getElementById("result").innerHTML = "이벤트 발생";

			//입력값 길이 출력
			var bigo = document.getElementById("bigo");
			var divResult = document.getElementById("result");
			document.getElementById("result").innerHTML = bigo.value.length;
			//http://yedam/model
			divResult.innerHTML += "<br> 마지막 경로/위치 : "
					+ bigo.value.lastIndexOf("/");
			divResult.innerHTML += "<br> 마지막 경로명 / : "
					+ bigo.value.substr(bigo.value.lastIndexOf("/") + 1);
			//split 키워드- 모델, 객체, 스트링
			var arr = bigo.value.split(",");
			divResult.innerHTML += "<br> 키워드 개수 : " + arr.length;
			//search, pattern- 정규표현식
			divResult.innerHTML += "<br> 이메일 체크: " + isEmail(bigo.value);
			//replace- 공백 제거
			bigo.value = bigo.value.replace(\/s\g,"");
			
			
		})
	}
	// 이메일 체크 정규식
	function isEmail(asValue) {
		var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		return regExp.test(asValue); // 형식에 맞는 경우 true 리턴	
	}
</script>
</head>
<body>
	<form>
		<input name="bigo" id="bigo" />
		<button type="button" id="btnCheck">입력값확인</button>
		<div id="result">결과확인</div>
	</form>

</body>
</html>


