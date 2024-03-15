package market;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import market.mybatis.SqlMapConfig;

public class productDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	
	public productDAO() {
		sqlSession = factory.openSession(true);
	}
	
	public boolean login(product user) {
		boolean result = false;
		
		int pd ;
		pd = sqlSession.selectOne("User.login", user);
		if( pd == 1) {
			result = true;
		}
	
		return result;
	}



	/*
	 * public boolean login(String userid, String userpw) { boolean result = false;
	 * HashMap<String, String> datas = new HashMap<>(); datas.put("userid", userid);
	 * datas.put("userpw", userpw);
	 * 
	 * System.out.println("userid : " + userid); System.out.println("userpw : " +
	 * userpw);
	 * 
	 * if((Integer)sqlSession.selectOne("User.login", datas) == 1) { result = true;
	 * }
	 * 
	 * return result; }
	 */
}

