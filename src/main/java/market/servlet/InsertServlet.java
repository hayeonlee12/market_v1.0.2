package market.servlet;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import market.mybatis.SqlMapConfig;

@WebServlet("/insert")
public class InsertServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int intdata = Integer.parseInt(req.getParameter("data1"));
		String strdata = req.getParameter("data2");

		SqlSessionFactory factory = SqlMapConfig.getFactory();
		SqlSession sqlsession = factory.openSession(true);

		/*
		 * - intdata, strdata 컬럼에 각각 insert - test.xml -> 파일이름 Test / id -> insert - 결과
		 * 추가 성공, 추가 실패 -> c.jsp 페이지에 result로 결과값 출력
		 */

		HashMap<String, Object> datas = new HashMap<>();
		datas.put("intdata", intdata);
		datas.put("strdata", strdata);

		int result = 0;
		result = sqlsession.insert("Test.insert", datas);

		if (result != 0) {
			req.setAttribute("result", "추가성공");
		} else {
			req.setAttribute("result", "추가실패");
		}
		
		req.getRequestDispatcher("c.jsp").forward(req, resp);
	}
}





