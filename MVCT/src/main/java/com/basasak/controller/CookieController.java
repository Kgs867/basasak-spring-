package com.basasak.controller;


import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.basasak.dao.CookieAction;
import com.basasak.dto.CartDTO;
import com.basasak.dto.CookieDTO;
import com.basasak.dto.LoginDTO;
import com.basasak.dto.OdderDTO;
import com.basasak.service.CookieService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class CookieController {
	@Inject
	private CookieService action;
	
	@RequestMapping(value = "cookielist.do", method = RequestMethod.GET) 
	public ModelAndView cookieList() throws Exception{
		ModelAndView mav=new ModelAndView("cookie");
		List<CookieDTO> list=action.cookieList();
		mav.addObject("articleList", list);
		return mav;
	}
	@RequestMapping(value = "cookieView.do", method = RequestMethod.GET) 
	public ModelAndView cookieView(@ModelAttribute("c_serial") CookieDTO c_serial) throws Exception{
		ModelAndView mav=new ModelAndView("cookieView");
		System.out.println(c_serial);
		CookieDTO list=action.cookieView(c_serial);
		mav.addObject("article", list);
		return mav;
	}
	@RequestMapping(value = "cartView.do", method = RequestMethod.GET)
	public ModelAndView cartView() throws Exception{
		ModelAndView mav=new ModelAndView("cart");
		return mav;
	}
	@RequestMapping(value = "cartdata.do", method = RequestMethod.POST) 
	@ResponseBody
	public ModelAndView cartdata() throws Exception{
		ModelAndView mav=new ModelAndView("cartdata");
		return mav;
	}
	
	@RequestMapping(value = "cartupdate.do", method = RequestMethod.POST) 
	@ResponseBody
	public ModelAndView cartdelete() throws Exception{
		ModelAndView mav=new ModelAndView("cartupdate");
		return mav;
	}
	
	@RequestMapping(value = "cartdelete.do", method = RequestMethod.POST) 
	@ResponseBody
	public ModelAndView cartupdate() throws Exception{
		ModelAndView mav=new ModelAndView("cartdelete");
		return mav;
	}
	
//	@RequestMapping(value = "cartView.do", method = RequestMethod.GET) 
//	public ModelAndView CartView(@RequestParam("id") String id) throws Exception{
//		ModelAndView mav=new ModelAndView("cartView");
//		System.out.println(id);
//		List<CartDTO> list=action.CartView(id);
//		mav.addObject("article", list);
//		return mav;
//	}
	@RequestMapping(value = "addCart.do", method = RequestMethod.POST) 
	public ModelAndView addCart(@ModelAttribute("c_serial") CartDTO c_serial, HttpSession session) throws Exception{
		action.addCart((String)session.getAttribute("id"), c_serial);
		System.out.println(c_serial+" "+session.getAttribute("id"));
		return cookieList();
	}
	
	@RequestMapping(value = "addCart.do", method = RequestMethod.POST) 
	public String addOdder(@ModelAttribute("c_serial") OdderDTO odder, HttpSession session) throws Exception{
		action.addOdder(odder, (String)session.getAttribute("id"));
		System.out.println(odder+" "+session.getAttribute("id"));
		return "redirect:index.do";
	}
	
}
 