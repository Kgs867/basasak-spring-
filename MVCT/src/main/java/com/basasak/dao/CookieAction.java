package com.basasak.dao;

import java.util.List;
import java.util.Map;

import com.basasak.dto.CartDTO;
import com.basasak.dto.CookieDTO;
import com.basasak.dto.OdderDTO;

public interface CookieAction {
	public List<CookieDTO> cookieList(Map<String, Object> map) throws Exception;

	public CookieDTO cookieView(CookieDTO cookieDTO) throws Exception;
	
	public int cookieCount(Map<String, Object> map);

	public int cartMax(String id);
	
	public int cartCount(String id);
	
	public void addCart(String id,CartDTO c_cerial);
	
	public int odderMax(String id);
	
	public void addOdder(List<CartDTO> cart,String id,String addr);
	
	public List<OdderDTO> odderList(String id);
	
	public List<CartDTO> listCart(String id);
	
	public void deleteCart(String id);
}
