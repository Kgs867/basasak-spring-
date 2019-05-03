package com.basasak.controller;


import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.basasak.dao.CookieAction;
import com.basasak.dto.CookieDTO;


/**
 * Handles requests for the application home page.
 */
@Controller
public class CookieController {
	@Inject
	private CookieAction action;
	
	@RequestMapping(value = "cookielist.do", method = RequestMethod.GET) 
	public ModelAndView home(Locale locale, Model model) throws Exception{
		ModelAndView mav=new ModelAndView("cookie");
		List<CookieDTO> list=action.cookieList();
		mav.addObject("articleList", list);
		return mav;
	}
	
}
 