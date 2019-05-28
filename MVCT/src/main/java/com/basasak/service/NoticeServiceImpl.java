package com.basasak.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.basasak.dao.NoticeAction;
import com.basasak.dto.BoardNoticeDTO;

@Service
public class NoticeServiceImpl implements NoticeService {
	@Inject
	private NoticeAction notice;

	@Override
	public List<BoardNoticeDTO> noticeList(Map<String,Object> map) throws Exception {
		// TODO Auto-generated method stub
		return notice.noticeList(map);
	}
	
	@Override
	public int noticeCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return notice.noticeCount(map);
	}
	
	@Override
	public BoardNoticeDTO noticeContent(int n_num) throws Exception {
		// TODO Auto-generated method stub
		return notice.noticeContent(n_num);
	}
	@Override
	public int nViewUpdate(int n_num) throws Exception {
		// TODO Auto-generated method stub
		return notice.nViewUpdate(n_num);
	}
	
	@Override
	public void noticeInsert(BoardNoticeDTO boardNoticeDTO) throws Exception {
		// TODO Auto-generated method stub
		notice.noticeInsert(boardNoticeDTO);
	}
	@Override
	public int nMax() throws Exception {
		// TODO Auto-generated method stub
		return notice.nMax();
	}
	
	@Override
	public BoardNoticeDTO updateNoticeForm(int n_num) throws Exception {
		// TODO Auto-generated method stub
		return notice.updateNoticeForm(n_num);
	}
	@Override
	public int noticeUpdate(BoardNoticeDTO boardNoticeDTO) throws Exception {
		// TODO Auto-generated method stub
		return notice.noticeUpdate(boardNoticeDTO);
	}
	
	@Override
	public BoardNoticeDTO deleteNoticeForm(int n_num) throws Exception {
		// TODO Auto-generated method stub
		return notice.deleteNoticeForm(n_num);
	}
	@Override
	public int noticeDelete(BoardNoticeDTO boardNoticeDTO) throws Exception {
		// TODO Auto-generated method stub
		return notice.noticeDelete(boardNoticeDTO);
	}
	
}
