<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>메인페이지</title>
    <link rel="stylesheet" href="./20weblayout.css" />
  </head>
  <body>
 <%@ include file = "header.jsp" %>
    <main>
      <h4 style="text-align: center">쇼핑몰 회원관리 프로그램</h4>
      <p>
      	쇼핑몰 회원정보와 회원매출정보 데이터베이스를 구축하고 회원관리 프로그램을 작성합니다.<br />
      	프로그램작성순서
      </p>
    <ol>
      <li>회원정보 테이블을 생성한다.</li>
      <li>매출정보 테이블을 생성한다.</li>
      <li>회원정보,매출정보 테이블에 제시된 문제지의 참조데이터를 추가생성한다.</li>
      <li>회원정보 입력화면 프로그램을 작성한다.</li>
      <li>회원정보 조회 프로그램을 작성한다.</li>
      <li>회원 매출 정보 조회 프로그램을 작성한다.</li>
    </ol>
    </main>
    <%@ include file = "footer.jsp" %>
  </body>
</html>
