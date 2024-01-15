<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>트레이너 문의사항 상세보기</title>
  <!-- 파비콘 코드 -->
  <link rel="icon" type="image/x-icon" href="emp/img/starfavi.png">
  
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="emp/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="emp/bower_components/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="emp/bower_components/Ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="emp/dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="emp/dist/css/skins/skin-blue.min.css">
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>


<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- header 시작 부분 -->
  <!-- inc 폴더의 TrainerNavi.jsp를 include -->
  <jsp:include page="/inc/trainerNavi.jsp"></jsp:include>
  <!-- header 끝나는 부분 -->

  <!-- aside 작성 뒤 항상 이 부분이 메인 컨텐츠 부분이 됨 -->
  <!-- 헤더 + 내용 wrapper 부분 시작 -->
  <div class="content-wrapper">
    <!-- 페이지 메인 컨텐트 헤더 -->
    <section class="content">
	<h3>문의사항</h3>
      <!-- Default box -->
      <div class="box box-info">
        <div class="box-header with-border">
          <h3 class="box-title">${resultQuestion.questionTitle}</h3>
        </div>
        <div class="box-body">
          ${resultQuestion.questionContent}
        </div>
        <!-- /.box-body -->
        <div class="box-footer">
	        <h4>답변</h4>
	        <img class="direct-chat-img" src="emp/img/man.png">
	        <c:forEach var="qr" items="${list}">
			<div class="direct-chat-text"> ${qr.questionReplyContent} </div>
			</c:forEach>
			<br>
			<!-- 문의 댓글 다는 곳 -->
			<div>
	          <form action="${pageContext.request.contextPath}/insertQuestionReply" method="post">
	            <div class="input-group">
	              <input type="text" name="questionReplyContent" id="questionReplyContent" placeholder="댓글을 입력하세요 ..." class="form-control">
	              <input type="hidden" name="employeeId" id="employeeId" value="${loginEmployee.employeeId}"class="form-control">
	              <input type="hidden" name="questionNo" id="questionNo" value="${question.questionNo}"class="form-control">
	                  <span class="input-group-btn">
	                    <button type="submit" class="btn btn-info btn-flat">입력하기</button>
	                  </span>
	            </div>
	          </form>
	        </div>
        </div>
        <!-- /.box-footer-->
      </div>
      <!-- /.box -->
    </section>
    <!-- /.content -->
  </div>
  <!-- 헤더 + 내용 wrapper 부분 끝 -->
  
  <!-- 메인 footer 항상 적을 것 -->
  <footer class="main-footer">
    <!-- 맨 오른쪽 표시되는 것 -->
    <div class="pull-right hidden-xs">
      팀 하리보 | 택민 유정 유섭 회윤
    </div>
    <!-- 저작권 명시 -->
    <strong>Copyright &copy; 2023-2024 <a href="trainerHome">TEAM HARIBO</a>.</strong> All rights reserved.
  </footer>
  
  
  <div class="control-sidebar-bg"></div>
</div>
<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 3 -->
<script src="emp/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="emp/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="emp/dist/js/adminlte.min.js"></script>

</body>
</html>