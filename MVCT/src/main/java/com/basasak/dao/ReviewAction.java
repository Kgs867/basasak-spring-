package com.basasak.dao;

import java.util.List;
import java.util.Map;

import com.basasak.dto.BoardDTO;

public interface ReviewAction {
	public List<BoardDTO> reviewList(Map<String,Object> map) throws Exception;
	public int reviewCount(Map<String,Object> map);
	public BoardDTO reviewContent(int r_num) throws Exception;
	public int rViewUpdate(int r_num) throws Exception;
	public void reviewInsert(BoardDTO boardDTO) throws Exception;
	public int rMax() throws Exception;
	public BoardDTO updateForm(int r_num) throws Exception;
	public int reviewUpdate(BoardDTO boardDTO) throws Exception;
	public BoardDTO deleteForm(int r_num) throws Exception;
	public int reviewDelete(BoardDTO boardDTO) throws Exception;
}
