package com.basasak.service;

import java.util.List;

import com.basasak.dto.CartDTO;
import com.basasak.dto.CookieDTO;
import com.basasak.dto.OdderDTO;

public interface CookieService {
	public List<CookieDTO> cookieList() throws Exception;
	
	public CookieDTO cookieView(CookieDTO cookieDTO) throws Exception;
	
	public int cartMax(String id);
	
	public void addCart(String id,CartDTO c_cerial);
	
	public int odderMax(String id);
	
	public void addOdder(OdderDTO odder,String id);
}
