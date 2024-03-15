package com.market.DAO;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.market.DTO.BasketDTO;
import com.market.DTO.BasketListDTO;
import com.market.DTO.ProductDTO;
import com.market.mybatis.SqlMapConfig;

public class ProductDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public ProductDAO() {
		sqlsession = factory.openSession(true);
	}
	
	public List<ProductDTO> totalProductView() {
		return sqlsession.selectList("Product.totalProductView");
	}
	public List<ProductDTO> categoryProductView(String categoryNum) {
		return sqlsession.selectList("Product.categorylProductView", categoryNum);
	}

	public ProductDTO prodGetInfo(String productid) {
		return sqlsession.selectOne("Product.prodGetInfo", productid);
		
	}

	public boolean inCart(BasketDTO cart) {
		boolean result = false;
		if(sqlsession.insert("Product.inCart",cart) != 0) {
			result = true;
		}
		return result;
	}

	public boolean insertZzim(Map<String, String> datas) {
		boolean result = false;
		if(sqlsession.insert("Product.insertZzim",datas) != 0) {
			result = true;
		}
		return result;
	}

	public boolean deleteZzim(Map<String, String> datas) {
		boolean result = false;
		if(sqlsession.delete("Product.deleteZzim",datas) != 0) {
			result = true;
		}
		return result;
	}

	public Boolean getZzimYN(Map<String, String> datas) {
		boolean result = false;
		if((Integer) sqlsession.selectOne("Product.getZzimYN",datas) >= 1) {
			result = true;
		}
		return result;
	}
}
