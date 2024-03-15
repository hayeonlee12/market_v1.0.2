package com.marketkurly.member.dao;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.market.DTO.LocationDTO;
import com.marketkurly.member.mybatis.SqlMapConfig;

public class MemberDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	
	public MemberDAO() {
		sqlSession = factory.openSession(true);
	}
	
	public boolean checkId(String userid) {
		boolean result = false;
		
		int cnt = 0;
		cnt = sqlSession.selectOne("Member.checkId", userid);
		if( cnt == 1 ) {
			result = true;
		}
		
		return result;
	}
	
	public boolean checkEmail(String useremail) {
		boolean result = false;
		
		int cnt = 0;
		cnt = sqlSession.selectOne("Member.checkEmail", useremail);
		if(cnt == 1) {
			result = true;
		}
		
		return result;
	}
	
	public boolean join(MemberDTO member) {
		boolean result = false;
		
		if(sqlSession.insert("Member.join", member) == 1) {
			result = true;
		}
			
		return result;
	}
	/* kdy : 배송지 테이블에 insert */
	public boolean insertLocTable(LocationDTO loc) {
		boolean result = false;
		
		if(sqlSession.insert("Member.insertLocTable", loc) == 1) {
			result = true;
		}
			
		return result;
	}
	

}
