package com.basasak.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.basasak.dao.CookieAction;
import com.basasak.dto.CookieDTO;

@Service
public class CooKieServiceImpl implements CookieService {
	@Inject
	private CookieAction cookie;
	@Override
	public List<CookieDTO> cookieList() throws Exception {
		System.out.println("cookieList service ½ÇÇà");
		return cookie.cookieList();
	}
}
