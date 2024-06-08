package student.common;

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
				session = new SqlSessionFactoryBuilder().build(is).openSession(false);
			} catch(IOException e) {
				e.printStackTrace();
			}
			return session;
		}
	
}
