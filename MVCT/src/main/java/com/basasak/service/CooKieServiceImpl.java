package com.basasak.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.basasak.dao.CookieAction;
import com.basasak.dto.CartDTO;
import com.basasak.dto.CookieDTO;
import com.basasak.dto.OdderDTO;

@Service
public class CooKieServiceImpl implements CookieService {
	@Inject
	private CookieAction cookie;

	@Override
	public List<CookieDTO> cookieList(Map<String, Object> map) throws Exception {
		System.out.println("cookieList service 실행");
		return cookie.cookieList(map);
	}
	
	public int cookieCount(Map<String, Object> map) {
		return cookie.cookieCount(map);
	}

	@Override
	public CookieDTO cookieView(CookieDTO cookieDTO) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("cookie service 실행 CookieView");
		return cookie.cookieView(cookieDTO);
	}

	@Override
	public int cartMax(String id) {
		System.out.println("cart service 실행 cartMax");
		return cookie.cartMax(id);
	}

	@Override
	public void addCart(String id,CartDTO c_cerial) {
		cookie.addCart(id, c_cerial);
	}

	@Override
	public int odderMax(String id) {
		return cookie.odderMax(id);
	}

	@Override
	public void addOdder(List<CartDTO> cart, String id,String addr) {
		cookie.addOdder(cart, id,addr);
	}

	@Override
	public List<CartDTO> listCart(String id) {
		return cookie.listCart(id);
	}

	@Override
	public int cartCount(String id) {
		// TODO Auto-generated method stub
		return cookie.cartCount(id);
	}

	@Override
	public List<OdderDTO> odderList(String id) {
		// TODO Auto-generated method stub
		return cookie.odderList(id);
	}

}
