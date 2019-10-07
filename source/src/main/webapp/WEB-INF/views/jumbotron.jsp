<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="${pageContext.request.contextPath }/resources/css/index.css" rel="stylesheet">	
<section class="jumbotron text-center">
	<img src="${pageContext.request.contextPath }/resources/img/main.jpg"	alt="#" />
	<!-- mobile jumbotron -->
	<div id="mobileJumbo" class="col p-4 px-0">
		<div class="jumboText">
			<p class="lead">
				세상은 넓고 차는 많다.<br /> 조금씩 다양하게 즐기자!
			</p>
			<h4 class="display-6 mx-auto">
				홍차 샘플러 전문 쇼핑몰<br /> 다채롭-티
			</h4>		
		</div>
		<div id="arrowToProduct" class="col">
			<a href="#main">
			<i class="fas fa-arrow-circle-down h3 rounded-circle"></i>
			</a>
		</div>
	</div>
		
	<!-- desktop jumbotron -->
	<div id="desktopJumbo" class="col-md-10 p-4 p-md-5 px-0">
	<div class="jumboText">
		<p class="lead">세상은 넓고 차는 많다. 조금씩 다양하게 즐기자!</p>
		<h3 class="display-6 mx-auto">홍차 샘플러 전문 쇼핑몰 다채롭-티</h3>
		</div>
		<div id="arrowToProduct" class="col">
			<a href="#main"> <i
				class="fas fa-arrow-circle-down h2 rounded-circle"></i>
			</a>
		</div>
	</div>
</section>
<script>
$("a[href^='#main']").click(function(e){
	e.preventDefault();
	let target = $(this.hash);
	$('html,body').animate({scrollTop: target.offset().top},500);
});
</script>
