package com.mybatis.model.servlce;

import org.apache.ibatis.session.SqlSession;
import static com.mybatis.common.SqlSessionTemplate.getSession;

import java.util.List;

import com.mybatis.model.dao.StudentDao;
import com.mybatis.model.vo.Student;

public class InsertStudentService {
	
	private StudentDao dao = new StudentDao();
	
	public int insertStudent() {
		SqlSession session = getSession();
		int result = dao.insertStudent(session);
		
		//트렌젝션처리
		if(result>0) session.commit();
		else session.rollback();
		
		session.close();
		
		return result;
	}

	public int insertStudentByName(String name) {
		SqlSession session = getSession();
		int result = dao.insertStudentByName(session,name);
		
		if(result>0) session.commit();
		else session.rollback();
		
		session.close();
		
		return result;
	}
	
	public int insertStudentAll(Student s) {
		SqlSession session = getSession();
		int result = dao.insertStudentAll(session, s);
		if(result>0) session.commit();
		else session.rollback();
		session.close();
		return result;
	}
	
	public int selectStudentCount() {
		SqlSession session = getSession();
		//여기서 dao.result = dao.selectStudentCount(session); 라고 작성해서 오류생겼었음 기억하셈 여기는 int임  
		int result = dao.selectStudentCount(session);
		session.close();
		return result;
	}
	
	public Student selectStudentByNo(int no) {
		SqlSession session = getSession();
		Student s = dao.selectStudentByNo(session, no);
		session.close();
		return s;
	}
	
	public List<Student> studentAll(int cPage, int numPerpage){
		SqlSession session = getSession();
		List<Student> result=dao.studentAll(session, cPage, numPerpage);
		session.close();
		return result;
	}
	
	
	
	
	
	
	
	
	
}
