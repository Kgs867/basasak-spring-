package com.basasak.dao;

import java.util.List;

import com.basasak.dto.CookieDTO;

public interface CookieAction {
	public List<CookieDTO> cookieList() throws Exception;
}
