package com.basasak.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.basasak.dto.CookieDTO;
@Repository
public class CookieActionImpl extends SqlSessionDaoSupport implements CookieAction {

	@Override
	public List<CookieDTO> cookieList() throws Exception {
		System.out.println("cookie action list ½ÇÇà");
		return getSqlSession().selectList("Cookie.List");
	}

}
