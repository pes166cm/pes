package com.web.board.service;

import static com.web.common.SessionTemplate.getSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.web.board.dao.BoardDao;
import com.web.board.dto.Board;


public class BoardService {
	//session을 생성
	
	private BoardDao dao = new BoardDao();
	
	public List<Board> selectAllList(){
		SqlSession session = getSession();
		List<Board> result = dao.selectAllList(session);
		session.close();
		return result;
	}
}
