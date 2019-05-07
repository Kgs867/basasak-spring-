package com.basasak.service;

import java.util.List;

import com.basasak.dto.CartDTO;
import com.basasak.dto.CookieDTO;

public interface CookieService {
	public List<CookieDTO> cookieList() throws Exception;
	
	public CookieDTO cookieView(CookieDTO cookieDTO) throws Exception;
	
//	public int cartMax(String id);
//	
//	public List<CartDTO> CartView(String id);
}
