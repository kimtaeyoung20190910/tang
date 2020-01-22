<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>로그인(5 of 6)</title>
<link href="./css/login5.css" rel="stylesheet">
<script language="javascript">
	function checkall() {
		var ty1 = document.getElementById("form1");
		var ty2 = document.getElementById("form2");
		var ty3 = document.getElementById("form3");
		var ty4 = document.getElementById("form4");
		var ty5 = document.getElementById("form5");
		var ty6 = document.getElementById("R");
		var ty7 = document.getElementById("S");

		if (ty1.value == "") {
			alert("시험명이 입력되지 않았습니다.");
			ty1.focus();
			return false;
		}
		if (ty2.value == "") {
			alert("문항 수를 입력해 주세요.");
			ty2.focus();
			return false;
		}
		if (ty3.value == "") {
			alert("시험시간을 입력해 주세요.");
			ty3.focus();
			return false;
		}

		if (ty4.value == "") {
			alert("시험종목을 입력해 주세요.");
			ty4.focus();
			return false;
		}

		if (ty5.value == "") {
			alert("상세정보를 입력해 주세요.");
			ty5.focus();
			return false;
		}

		alert("시험 등록이 완료되었습니다.");
	}
</script>
</head>

<body>
	<form name="form" method="post" action="../html/login2.html"
		onsubmit="return checkall()">
		<p class="p1">
		<h2>시험지 등록</h2>
		</p>
		<div class="div1">
			<div class="left1">
				<p>시험명</p>
				<p class="p2">문항 수</p>
				<p class="p3">시험종목</p>
				<p class="p4">상세정보</p>
				<p class="p5">출제유형</p>
			</div>
			<div class="right1">
				<div>
					<input type="text" name="form1" id="form1" class="inp1"
						value="신입사원 레벨테스트">
				</div>
				<div style="margin-top: 20px;">
					<input type="text" name="form2" id="form2" class="inp2" value="10">
					<span style="padding-left: 102px;">시험시간</span> <span
						style="padding-left: 10px;"><input type="text" name="form3"
						id="form3" class="inp2" value="1시간"></span>
				</div>
				<div style="margin-top: 20px;">
					<input type="text" name="form4" id="form4" class="inp3"
						value="데이터베이스">
				</div>
				<div style="margin-top: 20px;">
					<input type="text" name="form5" id="form5" class="inp4"
						value="예담 주식회사 2020년 신입사원 공채 실기 테스트입니다.">
				</div>
				<div style="margin-top: 50px;">
					<input type="radio" name="form6" id="R" value="1"> <label
						for="R" id="radio1">랜덤출제</label>&nbsp;&nbsp; <input type="radio"
						name="form6" id="A" value="1"> <label for="A" id="radio1">랜덤출제</label>&nbsp;&nbsp;
				</div>
			</div>
			<div class="spc1">
				<input type="submit" class="spa1" value="등록" onclick="location.href='examWrite.do'"></input> <input
					type="button" class="spa2" value="목록"
					onClick="location.href='../html/login2.html'"></input>
			</div>
		</div>
	</form>
</body>

</html>