<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>로그인 (of 6)</title>
    <style>
        body {
            position: absolute;
            margin: 0;
            padding: 0;
            left: 10%;
            top: 10%;
        }

        .ty {
            position: relative;
            width: 1200px;
            height: 600px;
            left: 20px;
            top: 20px;
        }

        #div1 {
            font-size: 12pt;
            position: relative;
            background-color: rgb(224, 224, 224);
            height: 90px;
            padding: 8px 25px;

        }

        #div2 {
            font-size: 12pt;
            position: relative;
            padding-top: 7px;
        }

        #div3 {
            display: inline-block;
            position: relative;
            padding: 8pt;
            left: 200pt;
        }

        span {
            display: inline-block;
            position: relative;
            border-radius: 4px;
            padding: 10px 15px;
            text-align: center;
            color: whitesmoke;
        }

        .inp1 {
            position: relative;
            border: solid 2px lightgray;
            border-radius: 4px;
            width: 160px;
            height: 32px;
        }

        .inp2 {
            position: relative;
            border: solid 2px lightgray;
            border-radius: 4px;
            width: 160px;
            height: 32px;
            color: gray;
        }

        table {
            position: absolute;
            border-top: 1px solid lightgray;
            border-collapse: collapse;
            text-align: center;
            width: 1200px;
        }

        tr,
        th {
            position: relative;
            border-bottom: 1px solid lightgray;
            width: 1200px;
            font-size: 11pt;
        }

        .tr1 {
            background-color: rgb(224, 224, 224);
        }

        td {
            position: relative;
            padding: 6px 0px;
        }

        .s {
            width: 1200px;
        }

        .bott {
            position: relative;
            padding: 0 auto;
            left: 40%;
            top: 50%;
            margin-top: 30px;
            margin-left: -60px;

        }
    </style>
</head>

<body>
    <h2>시험목록</h2>
    <div class="ty">
        <div id="div1">응시여부 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" value="1"> 전체&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" value="1"> 미응시&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" value="1"> 응시
            <span style="background-color:rgb(241, 196, 15); right: -656px; width: 70px;
            height: 20px;">
                초기화</span>
            <br />
            <div id="div2">시험종목 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" class="inp1" value="데이터베이스">
                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;시험명&nbsp;&nbsp;
                <input type="text" class="inp2" value="&nbsp;&nbsp;내용을 입력해주세요">
                <span style="background-color:rgb(52, 152, 219); right: -450px; width: 70px;
                height: 20px;">
                    검색</span>
            </div>
        </div>
        <div id="div3">
            <span style="background-color:rgb(52, 152, 219); right: -678px; width:90px;">
                문제등록</span>
            <span style="background-color:rgb(52, 152, 219); right: -678px; width:90px;">
                시험지 등록</span>
        </div>
        <div class="table">
            <table cellpadding="10" width="500" height="250">
                <tbody>
                    <tr class="tr1">
                        <th>No.</th>
                        <th>시험종목</th>
                        <th>시험명</th>
                        <th>응시여부</th>
                    </tr>
                    <tr>
                        <td>89</td>
                        <td>데이터베이스</td>
                        <td>3월 정기시험&nbsp;</td>
                        <td>
                            <span style="background-color:dimgray; width:52px; height:15px;
                                    font-size: small; padding-top:4pt; font-weight: bold;">
                                응시하기</span></td>
                    </tr>
                    <tr>
                        <td>88</td>
                        <td>프로그래밍&nbsp;</td>
                        <td>&nbsp;진급시험</td>
                        <td><span style="background-color:rgb(52, 152, 219); width:46px; height:13px;
                        font-size: 8.5pt; padding: 7pt; padding-top: 2pt; font-weight: bold;">
                                결과확인</span></td>
                    </tr>
                    <tr>
                        <td>87</td>
                        <td>운영체제&nbsp;</td>
                        <td>3월 정기시험&nbsp;</td>
                        <td><span style="background-color:dimgray; width:52px; height:15px;
                        font-size: small; padding-top:4pt; font-weight: bold;">
                                응시하기</span></td>
                    </tr>
                    <tr>
                        <td>86</td>
                        <td>&nbsp;프로그래밍</td>
                        <td>&nbsp;신입사원 레벨 테스트</td>
                        <td><span style="background-color:rgb(52, 152, 219); width:46px; height:13px;
                        font-size: 8.5pt; padding: 7pt; padding-top: 2pt; font-weight: bold;">
                                결과확인</span></td>
                    </tr>
                    <tr>
                        <td>85</td>
                        <td>정보기초&nbsp;</td>
                        <td>&nbsp;신입사원 레벨 테스트</td>
                        <td><span style="background-color:dimgray; width:52px; height:15px;
                        font-size: small; padding-top:4pt; font-weight: bold;">
                                응시하기</span></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="bott">
            <span style="background-color:whitesmoke; width:20px; height:20px;
            font-size: 13pt; padding: 7pt; color:gray;">
                <</span> <span style="background-color:whitesmoke; width:20px; height:20px;
            font-size: 12pt; padding: 7pt; color:black;">
                    1
            </span>
            <span style="background-color:rgb(52, 152, 219); width:20px; height:20px;
            font-size: 12pt; padding: 7pt; font-weight: bold;">
                2</span>
            <span style="background-color:whitesmoke; width:20px; height:20px;
            font-size: 12pt; padding: 7pt; color:black;">
                3</span>
            <span style="background-color:whitesmoke; width:20px; height:20px;
            font-size: 12pt; padding: 7pt; color:black;">
                4</span>
            <span style="background-color:whitesmoke; width:20px; height:20px;
            font-size: 13pt; padding: 7pt; color:grey;">
                ></span>

        </div>
    </div>
</body>

</html>