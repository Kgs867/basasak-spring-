package com.basasak.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.basasak.dao.MemberAction;
import com.basasak.dto.LoginDTO;
import com.basasak.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {
	@Inject
	private MemberAction action;
	@Override
	public LoginDTO login(LoginDTO mlogin) throws Exception {
		System.out.println("service login ½ÇÇà"+action);
		return action.login(mlogin);
	}
	@Override
	public void register(MemberDTO member) {
		action.register(member);		
	}
	@Override
	public MemberDTO memberInfo(String id) {
		// TODO Auto-generated method stub
		return action.memberInfo(id);
	}
	@Override
	public void memberEdit(MemberDTO member) {
		action.memberEdit(member);
	}
	

}
