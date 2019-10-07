<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.5">
    <title>다채롭티</title>
    <!-- favicon.ico 404 없앰 -->
    <link rel="icon" href="data:;base64,iVBORw0KGgo=">

    <!-- Bootstrap core CSS -->
		<link href="${pageContext.request.contextPath }/webjars/bootstrap/4.3.1/css/bootstrap.css" rel="stylesheet">
    <!-- font awesome -->
		<link href="${pageContext.request.contextPath }/webjars/font-awesome/5.9.0/css/all.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath }/resources/css/common.css" rel="stylesheet">
     
     
   <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="${pageContext.request.contextPath }/webjars/jquery/3.4.1/dist/jquery.js"></script>
    <script src="${pageContext.request.contextPath }/webjars/popper.js/1.14.7/dist/umd/popper.js"></script>
    <script src="${pageContext.request.contextPath }/webjars/bootstrap/4.3.1/js/bootstrap.js"></script>




<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown menu if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>

  </head>
  <body>

  <header class="blog-header pt-4" id="blog-header">
    <div class="row flex-nowrap justify-content-between align-items-center">
      <div class="col text-center">
        <a class="blog-header-logo text-dark bold" href="${pageContext.request.contextPath }/">다채롭-티</a>
      </div>
    </div>


 <nav id="headerButtons" class="navbar d-flex justify-content-end">    
			<c:choose>
					<c:when test= "${empty sessionScope}">
						<div>
							<a class="btn btn-lg btn-outline-secondary mr-2" href="${pageContext.request.contextPath }/login/loginForm">로그인</a>
							<a class="btn btn-lg btn-outline-secondary" href="${pageContext.request.contextPath }/member/memberJoinForm">회원가입</a>
						</div>
					</c:when>
					<c:otherwise>

							<div>
								<div class="dropdown">
								<a class="dropbtn btn btn-lg btn-outline-secondary dropdown-toggle mr-2" onclick="myFunction()" href="javascript:void(0);">${sessionScope.user.nickname}님</a>
								<div class="dropdown-content" id="myDropdown">
									<a class="dropdown-item" href="${pageContext.request.contextPath }/member/memberModifyForm/${sessionScope.user.id}">내 정보수정</a>
									<a class="dropdown-item" href="${pageContext.request.contextPath }/member/mPwChangeForm/${sessionScope.user.id}">비밀번호 수정</a>
									<a class="dropdown-item" href="#"></a>
									<a class="dropdown-item" href="${pageContext.request.contextPath }/member/memberDeleteForm/${sessionScope.user.id}">회원 탈퇴</a>
								</div>
								</div>
								<a class="btn btn-lg btn-outline-secondary" href="javascript:logOut();">로그아웃</a>
							</div>
							
					</c:otherwise>
				</c:choose>          
    </nav> 


  <nav id="mainNav" class="mainNav navbar nav-pills navbar-expand-md navbar-light">
  <div class="mb-auto pl-0">
  	<div class = "nav-link closeBtn"><a href="javascript:void(0)">&times;</a></div>  	
  	<div class = "nav-link"><a href="${pageContext.request.contextPath }/">Home</a></div>
	  <div class = "nav-link"><a href="${pageContext.request.contextPath }/product/productList">Product</a></div>
    <div class = "nav-link"><a href="${pageContext.request.contextPath }/bbs/list">Review</a></div>
    <div class = "nav-link"><a href="javascript:alert('준비중')">Notice</a></div>
	  </div>  
  </nav>
<button class="openBtn"><i class="fas fa-bars"></i> MENU</button>


  </header>



	<script>
	function logOut(){
		var result = confirm("로그아웃 하시겠습니까?");
		if(result){
			this.location.href="${pageContext.request.contextPath }/login/logOut";
		}else{
			return;
		}
	}

	</script>
<script>
window.addEventListener("load",init,false);
function init(){
	var closeBtn = document.getElementsByClassName("closeBtn")[0];
	closeBtn.addEventListener("click",function(){
		this.parentElement.parentElement.style.display="";
	},false);

	var openBtn = document.getElementsByClassName("openBtn")[0];
	openBtn.addEventListener("click",function(){
		this.previousElementSibling.style.display="flex";
	},false);

}

$(".mainNav div div").mouseover(function(){
	this.firstChild.style="color:white"
})
$(".mainNav div div").mouseout(function(){
	this.firstChild.style="color:black"
})

</script>
