package com.kh.myapp.login.dao;

import com.kh.myapp.member.dto.MemberDTO;

public interface LoginDAO {
	
	// 회원유무 체크
	int isMember(String id,String pw);
	
	// 회원 정보 가져오기
	MemberDTO getMember(String id, String pw);
}
