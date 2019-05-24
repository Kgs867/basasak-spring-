package com.basasak.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.basasak.dao.MemberAction;
import com.basasak.dao.MemberActionImpl;
import com.basasak.dto.LoginDTO;
import com.basasak.service.MemberService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class LoginController {	
	/**
	 * Simply selects the home view to render by returning its name.
	 */

	private LoginDTO mlogin;
//	
//	//@Autowired
//	private MemberAction memberaction =new MemberActionImpl(); 
	@Inject
	private MemberService service;
	
	
	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public ModelAndView form() {
		ModelAndView mav=new ModelAndView("login");
		System.out.println("login ����");
		return mav;

	}
	
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("login") LoginDTO login, HttpSession session) throws Exception {
		System.out.println("login do ����");
		System.out.println(login.getM_id());
		System.out.println("logincontroll =>"+mlogin);
		mlogin=service.login(login);
		System.out.println(mlogin.getM_id());
		System.out.println(mlogin.getM_pw()+"==="+login.getM_pw());
		if (mlogin.getM_pw().equals(login.getM_pw())) {
			session.setAttribute("id", login.getM_id());
		}
		
		ModelAndView mav=new ModelAndView("index");
		
		
		return mav;
	}
	@RequestMapping(value = "logout.do", method = RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {
		System.out.println("logout.do ����");
		session.invalidate();
		ModelAndView mav=new ModelAndView("index");
		return mav;
	}
	
}
 