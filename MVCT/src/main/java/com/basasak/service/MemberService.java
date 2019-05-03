package com.basasak.service;

import com.basasak.dto.LoginDTO;

public interface MemberService {
	public LoginDTO login(LoginDTO mlogin) throws Exception;
}
