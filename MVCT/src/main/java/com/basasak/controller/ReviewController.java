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
import com.basasak.dto.BoardDTO;
import com.basasak.dto.CartDTO;
import com.basasak.dto.CookieDTO;
import com.basasak.dto.LoginDTO;
import com.basasak.service.CookieService;
import com.basasak.service.ReviewService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class ReviewController {
	@Inject
	private ReviewService action;
	
	@RequestMapping(value = "review.do", method = RequestMethod.GET) 
	public ModelAndView reviewList() throws Exception{
		ModelAndView mav=new ModelAndView("review");
		List<BoardDTO> list=action.reviewList();
		mav.addObject("articleList",list);
		
		return mav;
	}
	
	@RequestMapping(value = "content.do", method = RequestMethod.GET) 
	public ModelAndView reviewContent(@RequestParam(value="r_num") int r_num) throws Exception{
		ModelAndView mav=new ModelAndView("content");
		action.rViewUpdate(r_num);
		BoardDTO content=action.reviewContent(r_num);
		
		mav.addObject("article",content);
		
		return mav;
	}
	
	@RequestMapping(value = "review_recommend.do", method = RequestMethod.POST) 
	@ResponseBody
	public ModelAndView review_recommend() throws Exception{
		ModelAndView mav=new ModelAndView("review_recommend");
		return mav;
	}
	
	@RequestMapping(value = "review_recommend_update.do", method = RequestMethod.POST) 
	@ResponseBody
	public ModelAndView review_recommend_update() throws Exception{
		ModelAndView mav=new ModelAndView("review_recommend_update");
		return mav;
	}
	
	@RequestMapping(value = "writeForm.do", method = RequestMethod.GET) 
	public ModelAndView writeFrom(Locale locale, Model model) throws Exception{
		ModelAndView mav=new ModelAndView("writeForm");
		mav.addObject("r_num", action.rMax()+1);
		return mav;
	}
	
	@RequestMapping(value = "writePro.do", method = RequestMethod.POST) 
	public ModelAndView reviewInsert(@ModelAttribute("boardDTO") BoardDTO boardDTO) throws Exception{
		ModelAndView mav=new ModelAndView("review");
		
		System.out.println("RC start");
		System.out.println(boardDTO.getM_id());
		
		action.reviewInsert(boardDTO);
		return reviewList();
	}
	
	@RequestMapping(value = "updateForm.do", method = RequestMethod.GET) 
	public ModelAndView updateFrom(@RequestParam(value="r_num") int r_num) throws Exception{
		ModelAndView mav=new ModelAndView("updateForm");
		BoardDTO updateForm=action.updateForm(r_num);
		mav.addObject("article",updateForm);
		return mav;
	}
	
	@RequestMapping(value = "updatePro.do", method = RequestMethod.POST) 
	public ModelAndView reviewUpdate(@ModelAttribute("boardDTO") BoardDTO boardDTO) throws Exception{
		ModelAndView mav=new ModelAndView();
		mav.setViewName("updatecheck");
		mav.addObject("r_num", boardDTO.getR_num());
		
		mav.addObject("done",action.reviewUpdate(boardDTO));
		System.out.println("#########################"+action.reviewUpdate(boardDTO));
		return mav;
	}
	
	@RequestMapping(value = "deleteForm.do", method = RequestMethod.GET) 
	public ModelAndView deleteFrom(@RequestParam(value="r_num") int r_num) throws Exception{
		ModelAndView mav=new ModelAndView("deleteForm");
		BoardDTO deleteForm=action.deleteForm(r_num);
		mav.addObject("article",deleteForm);
		return mav;
	}
	
	@RequestMapping(value = "deletePro.do", method = RequestMethod.POST) 
	public ModelAndView reviewDelete(@ModelAttribute("boardDTO") BoardDTO boardDTO) throws Exception{
		ModelAndView mav=new ModelAndView();
		mav.setViewName("deletecheck");
		mav.addObject("r_num", boardDTO.getR_num());
		
		mav.addObject("delCheck",action.reviewDelete(boardDTO));
		System.out.println("#########################"+action.reviewDelete(boardDTO));
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
 