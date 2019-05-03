package com.basasak.dao;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.basasak.dto.LoginDTO;
import com.basasak.dto.MemberDTO;

@Repository
public class MemberActionImpl extends SqlSessionDaoSupport implements MemberAction {
	@Override
	public LoginDTO login(LoginDTO LoginDTO) {
		System.out.println("login action impl 실행");
		System.out.println("loginDTO "+LoginDTO.getM_id());

		try {
			return getSqlSession().selectOne("Member.login",LoginDTO);
		} catch (Exception e) {
			System.out.println("에러발생 sql "+e);
			return null;
		}
		
	}

}
