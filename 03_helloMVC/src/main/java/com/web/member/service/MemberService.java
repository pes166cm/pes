package com.web.member.service;

import org.apache.ibatis.session.SqlSession;

import com.web.member.dao.MemberDao;
import com.web.member.dto.Member;

import static com.web.common.SessionTemplate.getSession;

public class MemberService {
	private MemberDao dao = new MemberDao();
	
	public Member selectMemberById(String userId) {
		SqlSession session = getSession();
		Member m = dao.selectMemberById(session, userId);
		session.close();
		return m;
	}
}

