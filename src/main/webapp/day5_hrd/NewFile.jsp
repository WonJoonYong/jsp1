@charset "UTF-8";
header {
  background-color: cadetblue;
  color: white;
  padding: 40px 20px;
  margin-left: -10px;
  margin-top: -20px;
}

body {
  width: 100%;
}

ul {

  list-style: none;
  background-color: brown;
  overflow: hidden;
  margin: auto;
  margin-left: -10px;
}
ul > li {
  float: left;

}

ul > li a {
  display: block;
  color: aliceblue;
  padding: 14px 16px;
  text-align: center;
  text-decoration: none;
}
ul > li a:hover {
  background-color: black;
  color: white;
}

ul > li:last-child {
  float: right;
  margin-right: 20px;
}

main {
  background-color: azure;
  padding: 20px;
  height: 500px;
  margin-left: -10px;
}
footer {
  background-color: cornflowerblue;
  color: white;
  padding: 20px;
  text-align: center;
  margin-left: -10px;
  bottom:0;
}