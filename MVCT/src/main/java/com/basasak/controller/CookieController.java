package com.basasak.controller;


import java.nio.channels.SeekableByteChannel;
import java.text.DateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

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
import com.basasak.util.PagingUtil;


/**
 * Handles requests for the application home page.
 */
@Controller
public class CookieController {
	@Inject
	private CookieService action;
	
	private IndexController index;
	
	@RequestMapping(value = "cookielist.do", method = RequestMethod.GET) 
	public ModelAndView cookieList(@RequestParam(value="pageNum",defaultValue="1") int currentPage,
		    @RequestParam(value="keyField",defaultValue="") String keyField,
		    @RequestParam(value="keyWord",defaultValue="") String keyWord) throws Exception{
		ModelAndView mav=new ModelAndView("cookie");
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("keyField", keyField);
		map.put("keyWord", keyWord);
		
		//占싼뤄옙占쌘듸옙占� 占실댐옙 占싯삼옙占쏙옙 占쏙옙占쏙옙 占싼뤄옙占쌘듸옙占�
		int count=action.cookieCount(map);
		//占쏙옙占쏙옙징 처占쏙옙  1.占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 2.占싼뤄옙占쌘듸옙占� 3.占쏙옙占쏙옙占쏙옙占쏙옙 占쌉시뱄옙占쏙옙 4.占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 5.占쏙옙청占쏙옙占�
		PagingUtil page=new PagingUtil(currentPage,count,9,5,"cookielist.do");
		System.out.println(page.getStartCount());
		//start=>占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙 첫占쏙옙째 占쏙옙占쏙옙占쏙옙 占쌉시뱄옙 占쏙옙호
		map.put("start",page.getStartCount());//<->map.get("start")=>#{start}
		map.put("end", page.getEndCount());
		
		List<CookieDTO> list=null;
		if(count > 0) {
			System.out.println("占쏙옙占쏙옙占� DAO호占쏙옙");
			list=action.cookieList(map);//keyField,keyWord,start,end
		}else {
			list=Collections.emptyList();//0 占쏙옙占쏙옙
		}
		System.out.println("ListController클占쏙옙占쏙옙占쏙옙 count=>"+count);
		
		mav.addObject("articleList", list);
		mav.addObject("pagingHtml",page.getPagingHtml());
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
		session.setAttribute("sb_count", action.cartCount((String)session.getAttribute("id")));
		session.setAttribute("headercookie", action.listCart((String)session.getAttribute("id")));
		System.out.println(c_serial+" "+session.getAttribute("id"));
		return cookieList(1,"","");
	}
	
	@RequestMapping(value = "addOdder.do", method = RequestMethod.GET) 
	public ModelAndView addOdder(HttpSession session,@RequestParam("zip") String zip,
			@RequestParam("addr1") String addr1,@RequestParam("addr2") String addr2) throws Exception{
		ModelAndView mav=new ModelAndView("index");
		System.out.println(zip+addr1+addr2);
		String addr=zip+","+addr1+","+addr2;
		List<CartDTO> odder= action.listCart((String)session.getAttribute("id"));
		action.addOdder(odder,(String)session.getAttribute("id"),addr);
		return mav;
	}
	@RequestMapping(value = "listOdder.do", method = RequestMethod.GET) 
	public ModelAndView listOdder(HttpSession session) throws Exception{
		ModelAndView mav=new ModelAndView("listOdder");
		List<OdderDTO> list=action.odderList((String)session.getAttribute("id"));
		mav.addObject("articleList", list);
		return mav;
	}
	
	@RequestMapping(value = "eventpage1.do", method = RequestMethod.GET) 
	public ModelAndView event1(HttpSession session) throws Exception{
		ModelAndView mav=new ModelAndView("eventpage1");
		return mav;
	}
	@RequestMapping(value = "eventpage2.do", method = RequestMethod.GET) 
	public ModelAndView event2(HttpSession session) throws Exception{
		ModelAndView mav=new ModelAndView("eventpage2");
		return mav;
	}
	@RequestMapping(value = "eventpage3.do", method = RequestMethod.GET) 
	public ModelAndView event3(HttpSession session) throws Exception{
		ModelAndView mav=new ModelAndView("eventpage3");
		return mav;
	}
	@RequestMapping(value = "eventpage4.do", method = RequestMethod.GET) 
	public ModelAndView event4(HttpSession session) throws Exception{
		ModelAndView mav=new ModelAndView("eventpage4");
		return mav;
	}
	
}
 