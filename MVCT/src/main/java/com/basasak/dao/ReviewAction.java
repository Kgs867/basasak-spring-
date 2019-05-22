package com.basasak.dao;

import java.util.List;

import com.basasak.dto.BoardDTO;

public interface ReviewAction {
	public List<BoardDTO> reviewList() throws Exception;
	public BoardDTO reviewContent(int r_num) throws Exception;
	public int rViewUpdate(int r_num) throws Exception;
	public void reviewInsert(BoardDTO boardDTO) throws Exception;
	public int rMax() throws Exception;
	public BoardDTO updateForm(int r_num) throws Exception;
	public int reviewUpdate(BoardDTO boardDTO) throws Exception;
	public BoardDTO deleteForm(int r_num) throws Exception;
	public int reviewDelete(BoardDTO boardDTO) throws Exception;
	
	/*
	 * public int cartMax(String id);
	 * 
	 * public List<CartDTO> CartView(String id);
	 */
}
