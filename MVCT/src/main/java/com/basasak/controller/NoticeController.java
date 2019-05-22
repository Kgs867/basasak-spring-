package com.basasak.controller;


import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.basasak.dao.CookieAction;
import com.basasak.dto.BoardNoticeDTO;
import com.basasak.dto.CartDTO;
import com.basasak.dto.CookieDTO;
import com.basasak.dto.LoginDTO;
import com.basasak.service.CookieService;
import com.basasak.service.NoticeService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class NoticeController {
	@Inject
	private NoticeService action;
	
	@RequestMapping(value = "notice.do", method = RequestMethod.GET) 
	public ModelAndView noticeList() throws Exception{
		ModelAndView mav=new ModelAndView("notice");
		List<BoardNoticeDTO> list=action.noticeList();
		mav.addObject("articleList",list);
		
		return mav;
	}
	
	@RequestMapping(value = "noticecontent.do", method = RequestMethod.GET) 
	public ModelAndView noticeContent(@RequestParam(value="r_num") int r_num) throws Exception{
		ModelAndView mav=new ModelAndView("noticecontent");
		action.rViewUpdate(r_num);
		BoardNoticeDTO content=action.noticeContent(r_num);
		
		mav.addObject("article",notice);
		
		return mav;
	}
	
	@RequestMapping(value = "notice_recommend.do", method = RequestMethod.POST) 
	@ResponseBody
	public ModelAndView notice_recommend() throws Exception{
		ModelAndView mav=new ModelAndView("notice_recommend");
		return mav;
	}
	
	@RequestMapping(value = "notice_recommend_update.do", method = RequestMethod.POST) 
	@ResponseBody
	public ModelAndView notice_recommend_update() throws Exception{
		ModelAndView mav=new ModelAndView("notice_recommend_update");
		return mav;
	}
	
	@RequestMapping(value = "writeNoticeForm.do", method = RequestMethod.GET) 
	public ModelAndView writeNoticeFrom(Locale locale, Model model) throws Exception{
		ModelAndView mav=new ModelAndView("writeNoticeForm");
		mav.addObject("r_num", action.rMax()+1);
		return mav;
	}
	
	@RequestMapping(value = "writeNoticePro.do", method = RequestMethod.POST) 
	public ModelAndView noticeInsert(@ModelAttribute("boardNoticeDTO") BoardNoticeDTO boardNoticeDTO) throws Exception{
		ModelAndView mav=new ModelAndView("notice");
		
		System.out.println("RC start");
		System.out.println(boardNoticeDTO.getA_id());
		
		action.noticeInsert(boardNoticeDTO);
		return noticeList();
	}
	
	@RequestMapping(value = "updateNoticeForm.do", method = RequestMethod.GET) 
	public ModelAndView updateNoticeFrom(@RequestParam(value="r_num") int r_num) throws Exception{
		ModelAndView mav=new ModelAndView("updateNoticeForm");
		BoardNoticeDTO updateNoticeForm=action.updateNoticeForm(r_num);
		mav.addObject("article",updateNoticeForm);
		return mav;
	}
	
	@RequestMapping(value = "updateNoticePro.do", method = RequestMethod.POST) 
	public ModelAndView noticeUpdate(@ModelAttribute("boardNoticeDTO") BoardNoticeDTO boardNoticeDTO) throws Exception{
		ModelAndView mav=new ModelAndView();
		mav.setViewName("updatecheck");
		mav.addObject("r_num", boardNoticeDTO.getN_num());
		
		mav.addObject("done",action.noticeUpdate(boardNoticeDTO));
		System.out.println("#########################"+action.noticeUpdate(boardNoticeDTO));
		return mav;
	}
	
	@RequestMapping(value = "deleteNoticeForm.do", method = RequestMethod.GET) 
	public ModelAndView deleteNoticeFrom(@RequestParam(value="r_num") int r_num) throws Exception{
		ModelAndView mav=new ModelAndView("deleteNoticeForm");
		BoardNoticeDTO deleteNoticeForm=action.deleteNoticeForm(r_num);
		mav.addObject("article",deleteNoticeForm);
		return mav;
	}
	
	@RequestMapping(value = "deleteNoticePro.do", method = RequestMethod.POST) 
	public ModelAndView noticeDelete(@ModelAttribute("boardNoticeDTO") BoardNoticeDTO boardNoticeDTO) throws Exception{
		ModelAndView mav=new ModelAndView();
		mav.setViewName("deletecheck");
		mav.addObject("r_num", boardNoticeDTO.getN_num());
		
		mav.addObject("delCheck",action.noticeDelete(boardNoticeDTO));
		System.out.println("#########################"+action.noticeDelete(boardNoticeDTO));
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
	
}
 