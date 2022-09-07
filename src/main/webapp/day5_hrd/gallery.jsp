<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <style>
      div.gallery {
        margin: 5px;
        border: 1px solid #ccc;
        float: left;
        width: 400px;
      }

      div.gallery:hover {
        border: 1px solid #777;
      }

      div.gallery img {
        width: 100%;
        height: auto;
      }

      div.desc {
        padding: 15px;
        text-align: center;
      }
    </style>
  </head>
  <body>
    <div class="gallery">
      <a target="_blank" href="../images/바다풍경.jpg">
        <img src="../images/바다풍경.jpg" alt="바다풍경" width="600" height="400" />
      </a>
      <div class="desc">한 섬의 아름다운 집들</div>
    </div>

    <div class="gallery">
      <a target="_blank" href="../images/숲.jpg">
        <img src="../images/숲.jpg" alt="숲" width="600" height="400" />
      </a>
      <div class="desc">관악산 입구</div>
    </div>

    <div class="gallery">
      <a target="_blank" href="../images/오로라.jpg">
        <img src="../images/오로라.jpg" alt="북극 오로라" width="600" height="400" />
      </a>
      <div class="desc">남극과 북극에서 볼 수 있는 오로라</div>
    </div>

    <div class="gallery">
      <a target="_blank" href="../images/산.jpg">
        <img src="../images/산.jpg" alt="산" width="600" height="400" />
      </a>
      <div class="desc">태백산맥의 모습</div>
    </div>
  </body>
</html>
