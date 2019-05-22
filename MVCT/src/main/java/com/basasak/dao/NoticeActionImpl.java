package com.basasak.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.basasak.dto.BoardDTO;
@Repository
public class NoticeActionImpl extends SqlSessionDaoSupport implements ReviewAction {

	@Override
	public List<BoardDTO> reviewList() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("review action list ½ÇÇà");
		return getSqlSession().selectList("Review.RList");
	}

	@Override
	public BoardDTO reviewContent(int r_num) throws Exception {
		return getSqlSession().selectOne("Review.RContent",r_num);
	}
	@Override
	public int rViewUpdate(int r_num) throws Exception {
		// TODO Auto-generated method stub
		return getSqlSession().update("Review.RViewUpdate",r_num);
	}
	
	@Override
	public void reviewInsert(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("RA start");
		getSqlSession().insert("Review.RInsert", boardDTO);
	}

	@Override
	public int rMax() throws Exception {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("Review.RMax");
	}
	
	@Override
	public BoardDTO updateForm(int r_num) throws Exception {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("Review.RUpateForm",r_num);
	}
	@Override
	public int reviewUpdate(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		int done = getSqlSession().update("Review.RUpdate", boardDTO);

		return done;
	}
	
	@Override
	public BoardDTO deleteForm(int r_num) throws Exception {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("Review.RContent",r_num);
	}
	@Override
	public int reviewDelete(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		int delCheck=getSqlSession().delete("Review.RDelete", boardDTO);
		return delCheck;
	}
}
