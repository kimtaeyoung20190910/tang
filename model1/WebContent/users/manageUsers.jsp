<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style>
	div { border: 1px solid silver;}
</style>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-lg-6 col-md-12">목록<br>
			<table class="table">
				<thead>
					<tr><th>아이디</th>
						<th>아이디</th>
					</tr>
				</thead>
				<tbody>
					<tr><td>홈</td>
						<td>홍길동</td></tr>
					<tr><td>홈</td>
						<td>홍길동</td></tr>
					<tr><td>홈</td>
						<td>홍길동</td></tr>
				</tbody>
				<tfoot></tfoot>
			</table>
		</div>
		<div class="col-lg-3 col-md-12">등록폼<br>
			<form>
				<div class="form-group row">
					<label class="col-3">아이디</label>
					<div class="col-8"><input type="text" class="form-control"></div>
				</div>
				<div class="form-group row">
					<label class="col-4">사용자이름</label>
					<div class="col-8"><input type="text" class="form-control"></div>
				</div>
				<div class="form-group row">
					<button class="btn btn-info">등록</button>
					<a href="#" class="btn btn-success">목록</a>
					<button class="btn btn-warning">취소</button>
				</div>
			</form>
		</div>
		<div class="col-lg-3 col-md-12">
			collapse 테스트<br>
				 <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample"
				 	role="button" aria-expanded="false" aria-controls="userinfo">
				도움말</a>
			<div class="collapse" id="userinfo">회원관리 상세 도움말</div>
		</div>
		
</div>

</div>
</body>
</html>