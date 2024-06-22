package com.mybatis.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mybatis.model.servlce.PostsServlce;
import com.mybatis.model.vo.Board;

/**
 * Servlet implementation class PostsAllServlet
 */
@WebServlet("/posts/postsAll.do")
public class PostsAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostsAllServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<Board> postsAll = new PostsServlce().postsAll();
		//System.out.println(postsAll);
		//저장할때는 setAttribute(key, value)  -> 가져올때 getAttribute(key)
		request.setAttribute("postsAll", postsAll);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/view/posts/postslist.jsp");
		rd.forward(request, response);
				
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
