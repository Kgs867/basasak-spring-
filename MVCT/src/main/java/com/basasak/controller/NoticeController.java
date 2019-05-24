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
import com.basasak.dto.BoardNoticeDTO;
import com.basasak.dto.CartDTO;
import com.basasak.dto.CookieDTO;
import com.basasak.dto.LoginDTO;
import com.basasak.service.CookieService;
import com.basasak.service.NoticeService;
import com.basasak.util.PagingUtil;


/**
 * Handles requests for the application home page.
 */
@Controller
public class NoticeController {
	@Inject
	private NoticeService action;
	
	@RequestMapping(value = "notice.do", method = RequestMethod.GET) 
	public ModelAndView noticeList(@RequestParam(value="pageNum",defaultValue="1") int currentPage,
		    @RequestParam(value="keyField",defaultValue="") String keyField,
		    @RequestParam(value="keyWord",defaultValue="") String keyWord) throws Exception{
		System.out.println(keyWord+"#################"+keyField);
		ModelAndView mav=new ModelAndView("notice");
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("keyField", keyField);
		map.put("keyWord", keyWord);
		
		//�ѷ��ڵ�� �Ǵ� �˻��� ���� �ѷ��ڵ��
		int count=action.noticeCount(map);
		
		PagingUtil page=new PagingUtil(currentPage,count,3,3,"notice.do");
		System.out.println(page.getStartCount());
		//start=>�������� �� ù��° ������ �Խù� ��ȣ
		map.put("start",page.getStartCount());//<->map.get("start")=>#{start}
		map.put("end", page.getEndCount());
		
		List<BoardNoticeDTO> list=null;
		
		if(count > 0) {
			System.out.println("����� DAOȣ��");
			list=action.noticeList(map);//keyField,keyWord,start,end
		}else {
			list=Collections.emptyList();//0 ����
		}
		System.out.println("ListControllerŬ������ count=>"+count);
		
		mav.addObject("articleList",list);
		mav.addObject("pagingHtml",page.getPagingHtml());
		
		return mav;
	}
	
	@RequestMapping(value = "noticecontent.do", method = RequestMethod.GET) 
	public ModelAndView noticeContent(@RequestParam(value="n_num") int n_num) throws Exception{
		ModelAndView mav=new ModelAndView("noticecontent");
		action.nViewUpdate(n_num);
		BoardNoticeDTO content=action.noticeContent(n_num);
		
		mav.addObject("article",content);
		
		return mav;
	}
	
	/*@RequestMapping(value = "notice_recommend.do", method = RequestMethod.POST) 
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
	}*/
	
	@RequestMapping(value = "writeNoticeForm.do", method = RequestMethod.GET) 
	public ModelAndView writeNoticeFrom(Locale locale, Model model) throws Exception{
		ModelAndView mav=new ModelAndView("writeNoticeForm");
		mav.addObject("n_num", action.nMax()+1);
		return mav;
	}
	
	@RequestMapping(value = "writeNoticePro.do", method = RequestMethod.POST) 
	public ModelAndView noticeInsert(@ModelAttribute("boardNoticeDTO") BoardNoticeDTO boardNoticeDTO) throws Exception{
		ModelAndView mav=new ModelAndView("notice");
		
		System.out.println("RC start");
		System.out.println(boardNoticeDTO.getA_id());
		
		action.noticeInsert(boardNoticeDTO);
		return noticeList(1,"","");
	}
	
	@RequestMapping(value = "updateNoticeForm.do", method = RequestMethod.GET) 
	public ModelAndView updateNoticeFrom(@RequestParam(value="n_num") int n_num) throws Exception{
		ModelAndView mav=new ModelAndView("updateNoticeForm");
		BoardNoticeDTO updateNoticeForm=action.updateNoticeForm(n_num);
		mav.addObject("article",updateNoticeForm);
		return mav;
	}
	
	@RequestMapping(value = "updateNoticePro.do", method = RequestMethod.POST) 
	public ModelAndView noticeUpdate(@ModelAttribute("boardNoticeDTO") BoardNoticeDTO boardNoticeDTO) throws Exception{
		ModelAndView mav=new ModelAndView();
		mav.setViewName("updatenoticecheck");
		mav.addObject("n_num", boardNoticeDTO.getN_num());
		
		mav.addObject("done",action.noticeUpdate(boardNoticeDTO));
		System.out.println("#########################"+action.noticeUpdate(boardNoticeDTO));
		return mav;
	}
	
	@RequestMapping(value = "deleteNoticeForm.do", method = RequestMethod.GET) 
	public ModelAndView deleteNoticeFrom(@RequestParam(value="n_num") int n_num) throws Exception{
		ModelAndView mav=new ModelAndView("deleteNoticeForm");
		BoardNoticeDTO deleteNoticeForm=action.deleteNoticeForm(n_num);
		mav.addObject("article",deleteNoticeForm);
		return mav;
	}
	
	@RequestMapping(value = "deleteNoticePro.do", method = RequestMethod.POST) 
	public ModelAndView noticeDelete(@ModelAttribute("boardNoticeDTO") BoardNoticeDTO boardNoticeDTO) throws Exception{
		ModelAndView mav=new ModelAndView();
		mav.setViewName("deletenoticecheck");
		mav.addObject("n_num", boardNoticeDTO.getN_num());
		
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
 