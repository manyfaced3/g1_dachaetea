<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- CSS -->
<link href="${pageContext.request.contextPath }/resources/css/form.css" rel="stylesheet">

<jsp:include page="../header.jsp" />
<section class="container">
	<!-- <div class="row memberLogin"> -->
		<form id="deleteForm" action="memberDelete" method="POST">
			<h4 class="col justify-content-center">회원 탈퇴</h4>
			<div class="form-row">
				<div class="col-md-6 col-lg-8 mb-3">
					<label for="id">아이디</label>
					<input class="form-control" type="email" name="id" id="id" value="${mdto.id}" readonly>
				</div>
				<div class="col-md-6 col-lg-8 mb-3">
					<label for="pw">비밀번호</label>
					<input type="password" class="form-control" name="pw" id="pw"
					 placeholder="가입 시 입력한 비밀번호"	required>
					<div class="invalid-feedback" id="errPw">비밀번호 에러메세지</div>
				</div>
				<input type="button" class="btn col-md-6 col-lg-8 btn-outline-secondary btn-lg my-2"
				 value="회원탈퇴" id="deleteBtn">
			</div>
		</form>
<!-- 	</div> -->
</section>
<script>
	window.addEventListener("load", init, false);
	var chk = new Array();
	function init() {
		$("input").on('focus', function () {
			$(this).removeClass("is-invalid");
		})
		$("#deleteBtn").on('click', deleteBtnF);
	}

	function deleteBtnF() {
		var pw = $("#pw").val();

		if(pw==null || pw==""){
			$("#errPw").text('비밀번호를 입력하세요');
			$("#pw").addClass("is-invalid");
		}else if(pw != '${mdto.pw}'){
			$("#errPw").text('비밀번호가 일치하지 않습니다');
			$("#pw").addClass("is-invalid");
		}else{
			if(confirm('탈퇴하시겠습니까?')){
				$("#deleteForm").submit();
			}
		}
	}

</script>
<jsp:include page="../footer.jsp" />