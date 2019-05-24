package com.basasak.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.basasak.dto.BoardNoticeDTO;
@Repository
public class NoticeActionImpl extends SqlSessionDaoSupport implements NoticeAction {

	@Override
	public List<BoardNoticeDTO> noticeList(Map<String,Object> map) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("notice action list ½ÇÇà");
		return getSqlSession().selectList("Notice.NList", map);
	}
	
	@Override
	public int noticeCount(Map<String,Object> map) {
		return getSqlSession().selectOne("Notice.NCount",map);
	}

	@Override
	public BoardNoticeDTO noticeContent(int n_num) throws Exception {
		return getSqlSession().selectOne("Notice.NContent",n_num);
	}
	@Override
	public int nViewUpdate(int n_num) throws Exception {
		// TODO Auto-generated method stub
		return getSqlSession().update("Notice.NViewUpdate",n_num);
	}
	
	@Override
	public void noticeInsert(BoardNoticeDTO boardNoticeDTO) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("NA start");
		getSqlSession().insert("Notice.NInsert", boardNoticeDTO);
	}

	@Override
	public int nMax() throws Exception {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("Notice.NMax");
	}
	
	@Override
	public BoardNoticeDTO updateNoticeForm(int n_num) throws Exception {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("Notice.NUpateForm",n_num);
	}
	@Override
	public int noticeUpdate(BoardNoticeDTO boardNoticeDTO) throws Exception {
		// TODO Auto-generated method stub
		int done = getSqlSession().update("Notice.NUpdate", boardNoticeDTO);

		return done;
	}
	
	@Override
	public BoardNoticeDTO deleteNoticeForm(int n_num) throws Exception {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("Notice.NContent",n_num);
	}
	@Override
	public int noticeDelete(BoardNoticeDTO boardNoticeDTO) throws Exception {
		// TODO Auto-generated method stub
		int delCheck=getSqlSession().delete("Notice.NDelete", boardNoticeDTO);
		return delCheck;
	}
}
