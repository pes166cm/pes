package com.mybatis.common;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionTemplate {
	public static SqlSession getSession() {
		String fileName="mybatis-config.xml";
		SqlSession session = null;
		try (InputStream is = Resources.getResourceAsStream(fileName);){
			//mybatis-config.xml파일에 스트림 연결 -> 스트림객체 생성
			
			//build()메소드의 인수로 is = mybatis-config.xml파일 내용을 전달
			session = new SqlSessionFactoryBuilder().build(is).openSession(false);
		} catch(IOException e) {
			e.printStackTrace(); //에러로그 확인용
		}
		return session;
	}
}