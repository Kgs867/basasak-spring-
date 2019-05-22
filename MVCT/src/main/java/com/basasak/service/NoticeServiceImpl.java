package com.basasak.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.basasak.dao.ReviewAction;
import com.basasak.dto.BoardDTO;

@Service
public class NoticeServiceImpl implements ReviewService {
	@Inject
	private ReviewAction review;

	@Override
	public List<BoardDTO> reviewList() throws Exception {
		// TODO Auto-generated method stub
		return review.reviewList();
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
	
	
//	@Override
//	public int cartMax(String id) {
//		System.out.println("cart service 실행 cartMax");
//		return cookie.cartMax(id);
//	}
//	@Override
//	public List<CartDTO> CartView(String id) {
//		System.out.println("Cart Service view 실행");
//		return cookie.CartView(id);
//	}
	
	
	
}
