package com.basasak.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.basasak.dao.MemberAction;
import com.basasak.dao.MemberActionImpl;
import com.basasak.dto.LoginDTO;
import com.basasak.dto.MemberDTO;
import com.basasak.service.CookieService;
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
	@Inject
	private CookieService action;
	
	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public ModelAndView form() {
		ModelAndView mav=new ModelAndView("login");
		System.out.println("login 角青");
		return mav;

	}
	
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("login") LoginDTO login, HttpSession session) throws Exception {
		System.out.println("login do 角青");
		System.out.println(login.getM_id());
		System.out.println("logincontroll =>"+mlogin);
		mlogin=service.login(login);
		System.out.println(mlogin.getM_id());
		System.out.println(mlogin.getM_pw()+"==="+login.getM_pw());
		if (mlogin.getM_pw().equals(login.getM_pw())) {
			session.setAttribute("id", login.getM_id());
			session.setAttribute("sb_count", action.cartCount((String)session.getAttribute("id")));
			session.setAttribute("headercookie", action.listCart((String)session.getAttribute("id")));
			System.out.println(session.getAttribute("cookie"));
		}
		
		ModelAndView mav=new ModelAndView("index");
		
		
		return mav;
	}
	@RequestMapping(value = "logout.do", method = RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {
		System.out.println("logout.do 角青");
		session.invalidate();
		ModelAndView mav=new ModelAndView("index");
		return mav;
	}
	
	@RequestMapping(value = "register.do", method = RequestMethod.GET)
	public ModelAndView registerget(HttpSession session) {
		ModelAndView mav=new ModelAndView("register");
		return mav;
	}
	
	
	@RequestMapping(value = "register.do", method = RequestMethod.POST)
	public ModelAndView register(@ModelAttribute("member") MemberDTO member,@RequestParam(value="m_addr2") String m_addr2) {
		System.out.println("register.do 角青"+member.getM_id());
		member.setM_addr(member.getM_addr()+m_addr2);
		service.register(member);
		ModelAndView mav=new ModelAndView("index");
		return mav;
	}
	@RequestMapping(value = "mypage.do", method = RequestMethod.GET)
	public ModelAndView memberedit(@ModelAttribute("member") MemberDTO member) {
		ModelAndView mav=new ModelAndView("mypage");
	
		return mav;
	}
	@RequestMapping(value = "memberedit.do", method = RequestMethod.GET)
	public ModelAndView memberedit(@ModelAttribute("member") MemberDTO member,HttpSession session) {
		ModelAndView mav=new ModelAndView("memberedit");
		mav.addObject("member",service.memberInfo((String)session.getAttribute("id")));
		return mav;
	}
	
	@RequestMapping(value = "memberedit.do", method = RequestMethod.POST)
	public ModelAndView membereditdo(@ModelAttribute("member") MemberDTO member, @RequestParam(value="m_addr2") String m_addr2) {
		member.setM_addr(member.getM_addr()+m_addr2);
		ModelAndView mav=new ModelAndView("index");
		service.memberEdit(member);
		return mav;
	}
	
}
 