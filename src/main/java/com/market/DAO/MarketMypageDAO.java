package com.market.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.market.DTO.LocationDTO;
import com.market.DTO.MarketUserDTO;
import com.market.DTO.OrderDTO;
import com.market.DTO.ReviewDTO;
import com.market.DTO.ReviewJoinUserDTO;
import com.market.DTO.ZzimJoinProductDTO;
import com.market.mybatis.SqlMapConfig;

public class MarketMypageDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public MarketMypageDAO() {
		sqlsession = factory.openSession(true);
	}
	
	public boolean confirmInfo(Map<String, String> datas) {
		boolean result = false;
		if( (Integer) sqlsession.selectOne("Mypage.confirm",datas) != 0) {
			result = true;
		}
		return result;
	}

	public boolean dupEmailCheck(String useremail) {
		boolean result = false;
		if( (Integer) sqlsession.selectOne("Mypage.dupCheck",useremail) != 0 ) {
			// 중복 메일 있을 때
			result = true;
		}
		return result;
	}
	public List<LocationDTO> locationList(String userid) {
		return sqlsession.selectList("Mypage.locationList",userid);
	}
	
	public boolean locBasicUpdate(String userid , String locationid) {
		boolean result = false;
		if ( sqlsession.update("Mypage.locBasicUpdate1",userid) != 0 &&
				sqlsession.update("Mypage.locBasicUpdate2",locationid) != 0) {
			result = true;
		}
		return result;
	}

	public boolean insertLocation(HashMap<String, String> datas) {
		boolean result = false;
		if( sqlsession.insert("Mypage.newLocation", datas) != 0 ) {
			result = true;
		}
		return result;
	}
	
	public boolean locBasicUpdateAndInsert(String userid, HashMap<String, String> datas) {
		boolean result = false;
		if ( sqlsession.update("Mypage.locBasicUpdate1",userid) != 0 &&
				sqlsession.insert("Mypage.newLocation", datas) != 0) {
			result = true;
		}
		return result;
	}

	public boolean locInfoModify(HashMap<String, String> datas) {
		boolean result = false;
		if ( sqlsession.update("Mypage.locInfoModify",datas) != 0 ) {
			result = true;
		}
		return result;
	}
	
	public boolean locInfoDel(String locationid) {
		boolean result = false;
		if ( sqlsession.delete("Mypage.locInfoDel",locationid) != 0 ) {
			result = true;
		}
		return result;
	}

	public boolean userDelete(String userid) {
		boolean result = false;
		if ( sqlsession.delete("Mypage.userDelete",userid) != 0 ) {
			result = true;
		}
		return result;
	}

	public boolean userModify(Map<String, String> datas) {
			boolean result = false;
			if ( sqlsession.update("Mypage.userModify",datas) != 0 ) {
				result = true;
			}
			return result;
	}

	public boolean userModify2(Map<String, String> datas) {
			boolean result = false;
			if ( sqlsession.update("Mypage.userModify2",datas) != 0 ) {
				result = true;
			}
			return result;
	}
	public MarketUserDTO userInfoGet(String userid) {
		return sqlsession.selectOne("Mypage.userInfoGet",userid);
	}

	public List<OrderDTO> purchaseHistory(String userid) {
		return sqlsession.selectList("Mypage.purchaseHistory", userid);
	}

	public LocationDTO selectLocBasic(String userid) {
		return sqlsession.selectOne("Mypage.selectLocBasic", userid);
	}
	
	public List<ZzimJoinProductDTO> zzimList(String userid) {
		return sqlsession.selectList("Mypage.zzimList", userid);
	}
	
	public List<ReviewJoinUserDTO> reviewList(String userid) {
		return sqlsession.selectList("Mypage.reviewList", userid);
	}
}
