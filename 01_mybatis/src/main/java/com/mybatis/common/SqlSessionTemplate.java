package com.mybatis.common;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionTemplate {
	
	public static SqlSession getSession() {
		//SqlSession 생성하기
		//1. SqlSessionFactory 클래스에서 제공하는 openSessio()메소드를 이용해서 생성
		// 1) SqlSessionFactory 클래스는 SqlSessionFactoryBuilder클래스를 이용해서 생성
		//     SqlSessionFactoryBuilder클래스의 build()메소드를 이용
		//		build()메소드의 인수로 mybatis-config.xml 파일내용을 전달
		
		String fileName="mybatis-config.xml";
		SqlSession session = null;
		try(InputStream is = Resources.getResourceAsStream(fileName);) {
			// mybatis-config.xml파일에 스트림연결 -> 스트림객체 생성
			// ctrl+shift+o <-- import하는 단축키
//			InputStream is = Resources.getResourceAsStream(fileName);
//			SqlSessionFactoryBuilder ssfb = new SqlSessionFactoryBuilder();
//			SqlSessionFactory sf = ssfb.build(is);
//			//openSession메소드의 인수로 boolean형 -> true/false
//			// autoCommit에 대한 설정
//			session = sf.openSession(false);
			
			session = new SqlSessionFactoryBuilder().build(is).openSession(false);
			
		} catch(IOException e) {
			e.printStackTrace();//에러로그 확인용
		}
		
		return session;
		
	}
	

}
