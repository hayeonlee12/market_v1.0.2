package market.user.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import market.mybatis.SqlMapConfig;

public class UserDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	
	public UserDAO() {
		sqlSession = factory.openSession(true);
	}
	
	public boolean join(UserDTO user) {
		boolean result = false;
		
		if(sqlSession.insert("User.join", user) == 1) {
			result = true;
		}
		
		return result;
	}

	public boolean login(String userid, String userpw) {
		boolean result = false;
		HashMap<String, String> datas = new HashMap<>();
		datas.put("userid", userid);
		datas.put("userpw", userpw);
		
		System.out.println("userid : " + userid);
		System.out.println("userpw : " + userpw);
		
		if((Integer)sqlSession.selectOne("User.login", datas) == 1) {
			result = true;
		}
		
		return result;
	}
}
