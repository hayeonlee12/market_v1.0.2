package com.marketkurly.reply.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.marketkurly.reply.mybatis.SqlMapConfig;

public class ReplyDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	
	public ReplyDAO() {
		sqlSession = factory.openSession(true);
	}
	
	public boolean addReply(ReplyDTO reply) {
		boolean result = false;
		
		if( sqlSession.insert("Reply.addReply", reply) == 1) {
			result = true;
		}
		
		return result;
	}
	
	public List<ReplyDTO> getReply(int productid) {
		List<ReplyDTO> list = new ArrayList<>();
		
		int productid1 = Integer.valueOf(productid);
		
		list = sqlSession.selectList("Reply.getReply", productid1);
		
		return list;
	}

	public boolean updateReply(int productid, String replycontents) {
		boolean result = false;
		
		HashMap<String, Object> datas = new HashMap<>();
		datas.put("productid", productid);
		datas.put("replycontents", replycontents);
		
		if( sqlSession.update("Reply.updateReply", datas) == 1 ) {
			result = true;
		}
		
		return result;
	}

	public boolean deleteReply(String productid) {
		boolean result = false;
		
		if( sqlSession.delete("Reply.deleteReply", productid) == 1 ) {
			result = true;
		}
		
		return result;
	}
	
}
