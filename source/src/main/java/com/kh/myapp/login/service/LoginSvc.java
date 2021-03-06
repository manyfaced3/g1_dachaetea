package com.kh.myapp.login.service;

import javax.servlet.http.HttpSession;

import com.kh.myapp.member.dto.MemberDTO;

public interface LoginSvc {
	// 회원유무 체크
	int isMember(String id,String pw);
	
	// 회원 정보 가져오기
	MemberDTO getMember(String id, String pw);
	

}
