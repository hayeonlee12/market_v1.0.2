package com.codingbox.inquiry.bean;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.codingbox.mybatis.SqlMapConfig;


public class inquiryDAO {
	
	// 이 방식은 고정인가봄
		SqlSessionFactory factory = SqlMapConfig.getFactory();
		SqlSession sqlSession;
		
		// inquiryDAO 생성자 명만 맞춰서 오픈세션 세팅
		public inquiryDAO() {
			sqlSession = factory.openSession(true);
		}
		
		
		// boolean 타입으로 보드안에 인서트보드 로 맞춰서 형식임 형식이
		public boolean insertinquiry(InquiryBean inquiry) {
			boolean result = false;
			
			if(sqlSession.insert("inquiry.insertinquiry", inquiry) == 1) {
				//insert 성공
				result = true;
			}
			
			return result;
					
		}


		public List<InquiryBean> getInquiryList(int startRow, int endRow) {
			HashMap<String, Integer> datas = new HashMap<>();
			datas.put("startRow", startRow);
			datas.put("endRow", endRow);
			
			List<InquiryBean> inquiryList =
					sqlSession.selectList("inquiry.getinquiryList", datas);
			
			return inquiryList;
		}


		public int getInquiryCnt() {
			return sqlSession.selectOne("inquiry.getinquiryCnt");		
		}


		public InquiryBean getDetail(String inquirynum) {
			return sqlSession.selectOne("inquiry.getDetail", inquirynum);
		}


		public void updateReadCount(String inquirynum) {
			sqlSession.update("inquiry.updateReadCount", inquirynum);
			
		}
		
		
		
}

