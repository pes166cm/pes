package com.mybatis.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mybatis.model.servlce.InsertStudentService;
import com.mybatis.model.vo.Student;

/**
 * Servlet implementation class InsertudentAllServlet
 */
@WebServlet("/student/insertstudentall.do")
public class InsertstudentAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertstudentAllServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		//클라이언트가 보낸 데이터를 DB에 저장하는 기능
		//클라이언트가 보낸 데이터는 getParameter(), getParameterValues()
		//getParameter() String변환 -> 한개값
		//getParameterValues() String[]변환 -> 다수값
		
		String name = request.getParameter("name");
		String pnum = request.getParameter("pnum");
		String mail = request.getParameter("mail");
		String adderss = request.getParameter("address");
		
		Student s = new Student();
		s.setStudentName(name);
		s.setStudentPnum(pnum);
		s.setStudentMail(mail);
		s.setStudentAddress(adderss);
		
		//DB에 저장
		int result = new InsertStudentService().insertStudentAll(s);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
