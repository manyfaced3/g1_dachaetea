$( document ).ready(function() {
	//제목, 내용 border
	$("input#btitle, textarea#bcontent").removeClass("is-invalid");
	//$("#btitle, #bcontent").css({"border-color":"#343a40","background-color":"#f4f9ff"});
	//작성자 border(없음)
	$("input#bnickname").css({"box-shadow":"none"});	

	



//유효성검사 에러메세지
let invalid = document.getElementsByClassName("invalid-feedback");
for(var i= 0; i<invalid.length;i++){
	if(invalid[i].innerHTML != null){
		invalid[i].style.display="block";
	}else{
		invalid[i].style.display="none";

	}
}
	});	


//유효성 검사
function valChk(){
	let btitle = $("#btitle").val().trim();
	let bcontent = $("#bcontent").val().trim();
	btitleErrMsg = $("#btitle").next()[0];
	bcontentErrMsg = $("#bcontent").next()[0];

	if (btitle == "") {
		errorLogic(btitleErrMsg, "제목을 입력하세요", "#btitle");
	} else {
		okLogic(btitleErrMsg, "#btitle");
	}

	if (bcontent == "") {
		errorLogic(bcontentErrMsg, "본문내용을 입력하세요", "#bcontent");
	} else {
		okLogic(bcontentErrMsg, "#bcontent");
	}

	if (btitle != "" && bcontent != "") {
		$("form").submit();
	}
}


//유효성 검사 실패했을 때
function errorLogic(errMsgTag,errMsgText,input){
	errMsgTag.innerText = errMsgText;
	$(input).addClass("is-invalid");
}
//유효성 검사 성공했을 
function okLogic(errMsgTag,input){
	errMsgTag.innerText = "";
	$(input).removeClass("is-invalid");

}


