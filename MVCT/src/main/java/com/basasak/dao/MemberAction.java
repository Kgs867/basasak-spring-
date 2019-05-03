package com.basasak.dao;

import org.springframework.stereotype.Service;

import com.basasak.dto.LoginDTO;
import com.basasak.dto.MemberDTO;


public interface MemberAction{
	public LoginDTO login(LoginDTO mlogin) throws Exception;
	
}
