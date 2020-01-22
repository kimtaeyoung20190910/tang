<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>로그인(6 of 6)</title>
<link href="./css/login6.css" rel="stylesheet">
<script language="javascript">
	function checkall() {
		var ty1 = document.getElementById("form1");
		var ty2 = document.getElementById("form2");
		var ty3 = document.getElementById("form3");
		var ty4 = document.getElementById("form4");
		var ty5 = document.getElementById("form5");
		var ty6 = document.getElementById("form6");
		var ty7 = document.getElementById("form7");

		if (ty1.value == "") {
			alert("시험 종목을 입력해주세요.");
			ty1.focus();
			return false;
		}
		if (ty2.value == "") {
			alert("문제가 입력되지 않았습니다.");
			ty2.focus();
			return false;
		}
		if (ty3.value == "") {
			alert("보기1을 입력해주세요.");
			ty3.focus();
			return false;
		}

		if (ty4.value == "") {
			alert("보기2를 입력해주세요.");
			ty4.focus();
			return false;
		}

		if (ty5.value == "") {
			alert("보기3을 입력해주세요.");
			ty5.focus();
			return false;
		}
		if (ty6.value == "") {
			alert("보기4을 입력해주세요.");
			ty6.focus();
			return false;
		}
		if (ty7.value == "") {
			alert("해설을 입력해주세요.");
			ty7.focus();
			return false;
		}

		alert("문제 등록이 완료되었습니다.");
	}
</script>
</head>

<body>
	<form name="form" method="post" action="../html/login2.html"
		onsubmit="return checkall()">
		<p class="p1">
		<h2>문제 등록</h2>
		</p>
		<div class="div1">
			<div class="left1">
				<p>종목</p>
				<p class="p2">문제</p>
				<p class="p3">보기1</p>
				<p class="p4">보기2</p>
				<p class="p5">보기3</p>
				<p class="p6">보기4</p>
				<p class="p7">해설</p>
				<p class="p8">정답</p>


			</div>
			<div class="right1">
				<div>
					<input type="text" name="form1" id="form1" class="inp1"
						value="데이터베이스">
				</div>
				<div style="margin-top: 10px;">
					<input type="text" name="form2" id="form2" class="inp2" value="">
				</div>
				<div style="margin-top: 10px;">
					<input type="text" name="form3" id="form3" class="inp3"
						value="신입사원 레벨테스트">
				</div>
				<div style="margin-top: 10px;">
					<input type="text" name="form4" id="form4" class="inp4"
						value="신입사원 레벨테스트">
				</div>
				<div style="margin-top: 10px;">
					<input type="text" name="form5" id="form5" class="inp5"
						value="신입사원 레벨테스트">
				</div>
				<div style="margin-top: 10px;">
					<input type="text" name="form6" id="form6" class="inp6"
						value="신입사원 레벨테스트">
				</div>
				<div style="margin-top: 10px;">
					<input type="text" name="form7" id="form7" class="inp7"
						value="신입사원 레벨테스트">
				</div>
				<div style="margin-top: 10px;">
					<input type="radio" name="form6" id="f1" value="1"> <label
						for="R" id="radio1">1</label>&nbsp;&nbsp; <input type="radio"
						name="form6" id="f2" value="1"> <label for="A"
						id="radio1">2</label>&nbsp;&nbsp; <input type="radio" name="form6"
						id="f3" value="1"> <label for="A" id="radio1">3</label>&nbsp;&nbsp;
					<input type="radio" name="form6" id="f4" value="1" checked>
					<label for="A" id="radio1">4</label>&nbsp;&nbsp;
				</div>
			</div>
			<div class="spc1">
				<input type="submit" class="spa1" value="등록" onclick="location.href='questWrite.do'"></input> <input
					type="button" class="spa2" value="목록"
					onClick="location.href='../html/login2.html'"></input>
			</div>
		</div>
	</form>
</body>

</html>