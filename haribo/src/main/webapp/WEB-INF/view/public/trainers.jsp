<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="customer/img/fav.png">
	<!-- Author Meta -->
	<meta name="author" content="colorlib">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>Trainers</title>

	<link href="https://fonts.googleapis.com/css?family=Roboto:100,200,300,400,500,700" rel="stylesheet">
	<!--
			CSS
			============================================= -->
	<link rel="stylesheet" href="customer/css/linearicons.css">
	<link rel="stylesheet" href="customer/css/font-awesome.min.css">
	<link rel="stylesheet" href="customer/css/bootstrap.css">
	<link rel="stylesheet" href="customer/css/magnific-popup.css">
	<link rel="stylesheet" href="customer/css/nice-select.css">
	<link rel="stylesheet" href="customer/css/animate.min.css">
	<link rel="stylesheet" href="customer/css/owl.carousel.css">
	<link rel="stylesheet" href="customer/css/jquery-ui.css">
	<link rel="stylesheet" href="customer/css/main.css">
</head>

<body>
	<!-- start header Area -->
	<!-- inc 폴더의 CustomerHeader.jsp를 include -->
	<jsp:include page="/inc/CustomerHeader.jsp"></jsp:include>
	<!-- end header Area -->

	<!-- start banner Area -->
	<section class="banner-area relative about-banner" id="home">
		<img class="cta-img img-fluid" src="customer/img/cta-img.png" alt="">
		<div class="overlay overlay-bg"></div>
		<div class="container">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="about-content col-lg-12">
					<h1>
						트레이너
					</h1>
					<p class="link-nav"><a href="${pageContext.request.contextPath}/home">Home </a>
						<span class="lnr lnr-arrow-right"></span> <a href="${pageContext.request.contextPath}/trainers">
							Trainers</a></p>
				</div>
			</div>
		</div>
	</section>
	<!-- End banner Area -->

	<!-- Start team Area -->
	<section class="team-area section-gap">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="col-lg-12">
					<div class="section-title-wrap text-center">
						<h1>트레이너 소개</h1>
						<p>저희와 함께하는 소중한 트레이너들을 소개합니다.</p>
					</div>
				</div>
			</div>
			<div class="row justify-content-center d-flex align-items-center">
					<c:forEach var="t" items="${list}">
				<div class="col-md-6 col-lg-3 single-team">
					<div class="thumb">
						<img class="customer/img-fluid" src="customer/img/t1.jpg" alt="">
					</div>
					<div class="meta-text mt-30 text-center">
						<h4>${t.employeeName}</h4>
						<p>${t.branchName} 지점</p>
					</div>
				</div>
					</c:forEach>
				<div class="col-md-6 col-lg-3 single-team">
					<div class="thumb">
						<img class="customer/img-fluid" src="customer/img/t2.jpg" alt="">
					</div>
					<div class="meta-text mt-30 text-center">
						<h4>Rodney Cooper</h4>
						<p>Creative Art Director (Project)</p>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 single-team">
					<div class="thumb">
						<img class="customer/img-fluid" src="customer/img/t3.jpg" alt="">
						<div class="align-items-center justify-content-center d-flex">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-linkedin"></i></a>
						</div>
					</div>
					<div class="meta-text mt-30 text-center">
						<h4>Dora Walker</h4>
						<p>Senior Core Developer</p>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 single-team">
					<div class="thumb">
						<img class="customer/img-fluid" src="customer/img/t4.jpg" alt="">
						<div class="align-items-center justify-content-center d-flex">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-linkedin"></i></a>
						</div>
					</div>
					<div class="meta-text mt-30 text-center">
						<h4>Lena Keller</h4>
						<p>Creative Content Developer</p>
					</div>
				</div>

				<div class="col-md-6 col-lg-3 single-team">
					<div class="thumb">
						<img class="customer/img-fluid" src="customer/img/t1.jpg" alt="">
						<div class="align-items-center justify-content-center d-flex">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-linkedin"></i></a>
						</div>
					</div>
					<div class="meta-text mt-30 text-center">
						<h4>Ethel Davis</h4>
						<p>Managing Director (Sales)</p>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 single-team">
					<div class="thumb">
						<img class="customer/img-fluid" src="customer/img/t2.jpg" alt="">
						<div class="align-items-center justify-content-center d-flex">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-linkedin"></i></a>
						</div>
					</div>
					<div class="meta-text mt-30 text-center">
						<h4>Rodney Cooper</h4>
						<p>Creative Art Director (Project)</p>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 single-team">
					<div class="thumb">
						<img class="customer/img-fluid" src="customer/img/t3.jpg" alt="">
						<div class="align-items-center justify-content-center d-flex">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-linkedin"></i></a>
						</div>
					</div>
					<div class="meta-text mt-30 text-center">
						<h4>Dora Walker</h4>
						<p>Senior Core Developer</p>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 single-team">
					<div class="thumb">
						<img class="customer/img-fluid" src="customer/img/t4.jpg" alt="">
						<div class="align-items-center justify-content-center d-flex">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-linkedin"></i></a>
						</div>
					</div>
					<div class="meta-text mt-30 text-center">
						<h4>Lena Keller</h4>
						<p>Creative Content Developer</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End team Area -->

	<!-- start footer Area -->
	<!-- inc 폴더의 CustomerFooter.jsp를 include -->
	<jsp:include page="/inc/CustomerFooter.jsp"></jsp:include>
	<!-- End footer Area -->


	<script src="customer/js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	 crossorigin="anonymous"></script>
	<script src="customer/js/vendor/bootstrap.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
	<script src="customer/js/easing.min.js"></script>
	<script src="customer/js/hoverIntent.js"></script>
	<script src="customer/js/superfish.min.js"></script>
	<script src="customer/js/jquery.ajaxchimp.min.js"></script>
	<script src="customer/js/jquery.magnific-popup.min.js"></script>
	<script src="customer/js/jquery.tabs.min.js"></script>
	<script src="customer/js/jquery.nice-select.min.js"></script>
	<script src="customer/js/owl.carousel.min.js"></script>
	<script src="customer/js/mail-script.js"></script>
	<script src="customer/js/main.js"></script>
</body>

</html>