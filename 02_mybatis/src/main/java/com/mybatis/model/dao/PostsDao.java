package com.mybatis.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.model.vo.Board;
import com.mybatis.model.vo.Notice;

public class PostsDao {

	public List<Board> postsAll (SqlSession session){
		return session.selectList("posts.postsAll");
	}
	
	public List<Notice> noticeAll(SqlSession session){
		return session.selectList("posts.noticeAll");
	}
}
