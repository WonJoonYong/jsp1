<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>hrdForm</title>
    <link rel="stylesheet" href="./14.css" />
  </head>
  <body>
  <%@ include file="header.jsp" %>
    <div>
      <h3>홈쇼핑 회원 등록</h3>
      <form action="" method="post">
        <table>
          <tr>
            <td class="title">회원번호(자동발생)</td>
            <td><input type="text" name="seq" class="small_box" value="10005" readonly /></td>
          </tr>
          <tr>
            <td class="title">회원성명</td>
            <td>
              <input type="text" name="name" class="small_box" />
              <span id="name" style="font-size: 0.7em; color: red"></span>
            </td>
          </tr>
          <tr>
            <td class="title">회원전화</td>
            <td>
              <input type="text" name="phoneNumber" class="mid_box" />
              <span id="tel" style="font-size: 0.7em; color: red"></span>
            </td>
          </tr>
          <tr>
            <td class="title">회원주소</td>
            <td>
              <input type="text" name="address" class="large_box" />
              <span id="address" style="font-size: 0.7em; color: red"></span>
            </td>
          </tr>
          <tr>
            <td class="title">가입일자</td>
            <td>
              <input type="text" name="signDate" class="small_box" />
              <span id="regdate" style="font-size: 0.7em; color: red"></span>
            </td>
          </tr>
          <tr>
            <td class="title">고객등급 [A:VIP,B:일반,C:직원]</td>
            <td>
              <input type="text" name="grade" class="small_box" />
              <span id="grade" style="font-size: 0.7em; color: red"></span>
            </td>
          </tr>
          <tr>
            <td class="title">도시코드</td>
            <td>
              <input type="text" name="city_code" class="small_box" />
              <span id="city" style="font-size: 0.7em; color: red"></span>
            </td>
          </tr>
          <tr>
            <td colspan="2" class="title">
              <button type="button" onclick="valid_check()">등록</button>
              <button onclick="location.href='memberList.jsp'">조회</button>
            </td>
          </tr>
        </table>
      </form>
    </div>
    <%@ include file="footer.jsp" %>
    <script src="validForm.js"></script>
  </body>
</html>
