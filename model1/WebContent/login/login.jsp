<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>로그인 (1 of 6)</title>
    <style>
        body {
            margin: 0;
            padding: 0;
        }

        div {
            position: absolute;
            top: 50%;
            left: 50%;
            width: 200px;
            height: 200px;
            margin: -60px 0 0 -70px;
            display: table-cell;
            vertical-align: middle;
            height: 50px;
        }

        input {
            width: 120%;
            height: 50%;
            border-bottom-right-radius: 4px;
            color: darkslategray;
            border-color: lightslategray;
        }

        label {
            font-weight: bold;
            color: aliceblue;
            border: solid;
            background-color: rgb(26, 188, 156);
            border-top-left-radius: 4px;
            margin-top: 10px;
            display: inline-block;
        }

        label[for="em"] {
            border: rgb(26, 188, 156);
            border-radius: 30px;
            font-size: 11px;
            width: 40%;
            height: 30px;
            line-height: 30px;
            text-align: center;
        }

        label[for="pw"] {
            border: rgb(26, 188, 156);
            border-radius: 30px;
            font-size: 11px;
            width: 40%;
            height: 30px;
            line-height: 30px;
            text-align: center;
        }

        label[for="lo"] {
            border: rgb(52, 152, 219);
            background-color: rgb(52, 152, 219);
            border-bottom-right-radius: 4px;
            font-size: 14px;
            width: 200%;
            height: 40px;
            line-height: 40px;
            text-align: center;

        }
    </style>
</head>

<body>
    <div>
        <label for="em">이메일</label>
        <input type="text" size="30" value="대용을 입력해주세요">
        <label for="pw">패스워드</label>
        <input type="text" size="30" value="내용을 입력해주세요">
        <label for="lo">
            <a href="./login2.html">로그인</a></label>
    </div>
</body>

</html>