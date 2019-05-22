package com.basasak.controller;


import java.text.DateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

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
import com.basasak.util.PagingUtil;


/**
 * Handles requests for the application home page.
 */
@Controller
public class ReviewController {
	@Inject
	private ReviewService action;
	
	@RequestMapping(value = "review.do", method = RequestMethod.GET) 
	public ModelAndView reviewList(@RequestParam(value="pageNum",defaultValue="1") int currentPage,
		    @RequestParam(value="keyField",defaultValue="") String keyField,
		    @RequestParam(value="keyWord",defaultValue="") String keyWord) throws Exception{
		System.out.println(keyWord+"#################"+keyField);
		ModelAndView mav=new ModelAndView("review");
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("keyField", keyField);
		map.put("keyWord", keyWord);
		
		//총레코드수 또는 검색된 글의 총레코드수
		int count=action.reviewCount(map);
		
		PagingUtil page=new PagingUtil(currentPage,count,10,10,"review.do");
		System.out.println(page.getStartCount());
		//start=>페이지당 맨 첫번째 나오는 게시물 번호
		map.put("start",page.getStartCount());//<->map.get("start")=>#{start}
		map.put("end", page.getEndCount());
		
		List<BoardDTO> list=null;
		
		if(count > 0) {
			System.out.println("여기는 DAO호출");
			list=action.reviewList(map);//keyField,keyWord,start,end
		}else {
			list=Collections.emptyList();//0 적용
		}
		System.out.println("ListController클래스의 count=>"+count);
		
		mav.addObject("articleList",list);
		mav.addObject("pagingHtml",page.getPagingHtml());
		
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
		return reviewList(1,"","");
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
 