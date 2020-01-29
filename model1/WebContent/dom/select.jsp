<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	window.addEventListener("load", function() {
		//버튼 이벤트
		btnR.addEventListener("click", function() {
			if (subject.selectedIndex >= 0) {
			//선택항목 오른쪽에 추가
			var opt = document.createElement("option");
			opt.text = subject.options[subject.selectedIndex].text;
			choose.add(opt);
			//선택항목 삭제
			subject.remove(subject.selectedIndex);
			}
		});
		//다건 처리
		//for (i = 0; i < subject.length; i++) {
		//	if (subject.options[i].selected) {

		//	}
		//	}
		
		//btnAll버튼 이벤트
		btnAll.addEventListener("click", function() {
			var len = subject.length;
			//for (i=0 i<len i++)
			for (i=len-1; i>=0; i--) { //len-3
			//선택항목 오른쪽에 추가
			var opt = document.createElement("option");
			opt.text = subject.options[i].text;
			choose.add(opt);
			//선택항목 삭제
			subject.remove(i);
			}
		});
	});
</script>
</head>

<body>
	<select id="subject" multiple="multiple" size="5">
		<option value="java">자바
		<option value="jsp">jsp
		<option value="spring">스프링
	</select>
	<button type="button" id="btnR">▶</button>
	<button type="button" id="btnL">◀</button>
	<button type="button" id="btnAll">전체이동</button>
	<select id="choose" multiple="multiple" size="5">
	</select>
</body>
</html>