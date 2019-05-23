package com.basasak.dao;

import org.springframework.stereotype.Service;

import com.basasak.dto.LoginDTO;
import com.basasak.dto.MemberDTO;


public interface MemberAction{
	public LoginDTO login(LoginDTO mlogin) throws Exception;
	
	public MemberDTO memberInfo(String id);
	
	public void register(MemberDTO member);
	
	public void memberEdit(MemberDTO member);
	
}
