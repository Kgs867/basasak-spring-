package com.basasak.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.basasak.dao.ReviewAction;
import com.basasak.dto.BoardDTO;

@Service
public class ReviewServiceImpl implements ReviewService {
	@Inject
	private ReviewAction review;

	@Override
	public List<BoardDTO> reviewList(Map<String,Object> map) throws Exception {
		// TODO Auto-generated method stub
		return review.reviewList(map);
	}
	@Override
	public int reviewCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return review.reviewCount(map);
	}
	@Override
	public BoardDTO reviewContent(int r_num) throws Exception {
		// TODO Auto-generated method stub
		return review.reviewContent(r_num);
	}
	@Override
	public int rViewUpdate(int r_num) throws Exception {
		// TODO Auto-generated method stub
		return review.rViewUpdate(r_num);
	}
	
	@Override
	public void reviewInsert(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		review.reviewInsert(boardDTO);
	}
	@Override
	public int rMax() throws Exception {
		// TODO Auto-generated method stub
		return review.rMax();
	}
	
	@Override
	public BoardDTO updateForm(int r_num) throws Exception {
		// TODO Auto-generated method stub
		return review.updateForm(r_num);
	}
	@Override
	public int reviewUpdate(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return review.reviewUpdate(boardDTO);
	}
	
	@Override
	public BoardDTO deleteForm(int r_num) throws Exception {
		// TODO Auto-generated method stub
		return review.deleteForm(r_num);
	}
	@Override
	public int reviewDelete(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return review.reviewDelete(boardDTO);
	}

}
