package com.market.DAO;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.market.DTO.BasketListDTO;
import com.market.mybatis.SqlMapConfig;

public class BasketListDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public BasketListDAO() {
		sqlsession = factory.openSession(true);
	}

	public List<BasketListDTO> listBasket(String userid) {
		return sqlsession.selectList("Basket.listBasket", userid);
	}

	public void deleteBasket(String cartid) {
		sqlsession.delete("Basket.deleteBasket",cartid);
	}
	
	public boolean countCntUpdate(Map<String, String> datas) {
		boolean result = false;
		if(sqlsession.update("Basket.countCntUpdate",datas) != 0) {
			result = true;
		}
		return result;
	}
	
	public void purchaseHistoryStore(Map<String, String> datas) {
		sqlsession.insert("Basket.purchaseHistoryStore",datas);
	}
	
}
