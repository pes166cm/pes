package com.web.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.web.board.dto.Board;

public class BoardDao {
	
	public List<Board> selectAllList(SqlSession session) {
		return session.selectList("board.selectAllList");
	}

}
