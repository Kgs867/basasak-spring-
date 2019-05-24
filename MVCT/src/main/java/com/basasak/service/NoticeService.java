package com.basasak.service;

import java.util.List;
import java.util.Map;

import com.basasak.dto.BoardNoticeDTO;
import com.basasak.dto.CartDTO;
import com.basasak.dto.CookieDTO;

public interface NoticeService {
	public List<BoardNoticeDTO> noticeList(Map<String,Object> map) throws Exception;
	public int noticeCount(Map<String,Object> map);
	public BoardNoticeDTO noticeContent(int n_num) throws Exception;
	public int nViewUpdate(int n_num) throws Exception;
	public void noticeInsert(BoardNoticeDTO boardNoticeDTO) throws Exception;
	public int nMax() throws Exception;
	public BoardNoticeDTO updateNoticeForm(int n_num) throws Exception;
	public int noticeUpdate(BoardNoticeDTO boardNoticeDTO) throws Exception;
	public BoardNoticeDTO deleteNoticeForm(int n_num) throws Exception;
	public int noticeDelete(BoardNoticeDTO boardNoticeDTO) throws Exception;
	/*
	 * public int cartMax(String id);
	 * 
	 * public List<CartDTO> CartView(String id);
	 */
}