package com.basasak.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.basasak.dao.MemberAction;
import com.basasak.dto.LoginDTO;

@Service
public class MemberServiceImpl implements MemberService {
	@Inject
	private MemberAction action;
	@Override
	public LoginDTO login(LoginDTO mlogin) throws Exception {
		System.out.println("service login ½ÇÇà"+action);
		return action.login(mlogin);
	}

}
