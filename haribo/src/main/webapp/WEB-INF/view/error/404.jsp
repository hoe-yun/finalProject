<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>404</title>
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 20%;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
</style>
</head>
<body>
<!-- The Modal -->

<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content" align="center">
    <br><br><p>404 : 잘못된 접근입니다.</p><br>
    <div align="right">
	    <button id="home" class="btn btn-rounded btn-outline-dark" style="width:80px">홈으로</button>
	    <button id="back" class="btn btn-outline-dark" style="width:80px">뒤로</button>
    </div>
  </div>

</div>

<script>
var modal = document.getElementById("myModal");

var btn = document.getElementById("myBtn");

window.onload = function() {
  modal.style.display = "block";
}

var homeBtn = document.getElementById('home');
var backBtn = document.getElementById('back');

homeBtn.onclick = function(){
	location.href="${pageContext.request.contextPath }";
}
backBtn.onclick = function(){
	history.back();
}
</script>
</body>
</html>