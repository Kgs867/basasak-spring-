package com.basasak.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.basasak.dto.CartDTO;
import com.basasak.dto.CookieDTO;
@Repository
public class CookieActionImpl extends SqlSessionDaoSupport implements CookieAction {

	@Override
	public List<CookieDTO> cookieList() throws Exception {
		System.out.println("cookie action list ����");
		return getSqlSession().selectList("Cookie.CList");
	}

	@Override
	public CookieDTO cookieView(CookieDTO cookieDTO) throws Exception {
		System.out.println("cookie action ���� CookieView"+cookieDTO);
		try {
			return getSqlSession().selectOne("Cookie.CView",cookieDTO);
		} catch (Exception e) {
			System.out.println("sql ����"+e);
			return null;
		}	
	}
	
	/*
	 * public int cartMax(String id) {
	 * System.out.println("cart action ���� CartMax"+id); return
	 * getSqlSession().selectOne("Cart.CMax",id); }
	 * 
	 * public List<CartDTO> CartView(String id) {
	 * System.out.println("cart view ���� cart view"+id); return
	 * getSqlSession().selectList("Cart.CView",id); }
	 */
}