<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>트레이너 마이페이지</title>
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
    <!-- 페이지 메인 헤더 -->
    <section class="content-header">
      <h1>${loginEmployee.employeeName}님의 마이페이지📅💙🤍💜❤️</h1>
      <br>
      <div class="callout callout-info">
        <h4>팀 하리보 공지사항</h4>
		<p>📢처음 오신 트레이너 분들께서는 본인 프로필 사진 업데이트 부탁드립니다.
		<br>📢기존 트레이너 분들께서도 프로필 사진은 항상 최근 사진으로 수정 부탁드립니다.</p>
      </div>
    </section>
    
    <!-- 페이지 메인 내용 시작 -->
    <section class="content">
        <div class="col-md-6">
          <!-- Horizontal Form -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">🔑비밀번호 변경🔑</h3>
            </div>
            <form id="form" method="post" action="${pageContext.request.contextPath}/updateEmployeePw">
              <div class="box-body">
                <div class="form-group" class="col-sm-10">
                  <label for="pw" >현재 비밀번호</label>
                    <input type="password" class="form-control" id="pw" name="employeePw" placeholder="현재 비밀번호를 입력하세요 ...">
                </div>
            
                <div class="form-group" class="col-sm-10">
                  <label for="newPw" >새 비밀번호(변경할 비밀번호)</label>
                    <input type="password" class="form-control" id="newPw" name="newEmployeePw" placeholder="새 비밀번호를 입력하세요 ...">
                </div>
                <div class="form-group" class="col-sm-10">
                  <label for="newPwCk" >새 비밀번호 확인</label>
                <input type="password" class="form-control" id="newPwCk" placeholder="새 비밀번호 일치 여부를 위해 새 비밀번호를 입력하세요 ...">
                </div>
              </div>
              <div>
               	<input type="hidden" id="employeeId" name="employeeId" value="${loginEmployee.employeeId}">
              	<input type="hidden" id="employeeNo" name="employeeNo" value="${loginEmployee.employeeNo}">
              </div>
 
              <!-- /.box-footer -->
            </form>
          </div>
        </div>
        
        <div class="box-footer">
        	<button type="submit" id="formBtn" class="btn btn-info pull-right">Save Changes</button>
        </div>
              
      </section>
  <!-- 페이지 메인 내용 끝 -->
  </div>
  <!-- 헤더 + 내용 wrapper 부분 끝 -->

  <!-- 메인 footer 항상 적을 것 -->
  <footer class="main-footer">
    <!-- 맨 오른쪽 표시되는 것 -->
    <div class="pull-right hidden-xs">
      팀 하리보
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