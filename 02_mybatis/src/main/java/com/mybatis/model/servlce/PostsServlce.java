package com.mybatis.model.servlce;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import static com.mybatis.common.SqlSessionTemplate.getSession;

import com.mybatis.model.dao.PostsDao;
import com.mybatis.model.vo.Board;
import com.mybatis.model.vo.Notice;

public class PostsServlce {
	private PostsDao dao = new PostsDao();

	public List<Board> postsAll(){
		SqlSession session = getSession();
		List<Board> result = dao.postsAll(session);
		session.close();
		return result;
	}
	
	public List<Notice> noticeAll(){
		SqlSession session = getSession();
		List<Notice> result = dao.noticeAll(session);
		session.close();
		return result;
	}
	
	
}
