package market.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("*.do")
public class DoFrontController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req,
                         HttpServletResponse resp)
            throws ServletException, IOException {
        doProcess(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req,
                          HttpServletResponse resp)
            throws ServletException, IOException {
        doProcess(req, resp);

    }

    protected void doProcess(HttpServletRequest request,
                             HttpServletResponse response)
            throws ServletException, IOException {
//        System.out.println("URI : " + request.getRequestURI());

        String requestURI = request.getRequestURI();
        String responseURI = null;
        
        
        if( requestURI.equals("/fc/do1.do") ) {

			/*
			 * request.setAttribute("result", "do1 으로 요청보내기");
			 * request.getRequestDispatcher("do1.jsp").forward(request, response);
			 */
        	
        	responseURI =  new Do1().execute(request, response);
        	
        } else if ( requestURI.equals("/fc/do2.do") ) {

			/*
			 * request.setAttribute("result", "do2 으로 요청보내기");
			 * request.getRequestDispatcher("do2.jsp").forward(request, response);
			 */
        	responseURI =  new Do2().execute(request, response);
        	
        } else if ( requestURI.equals("/fc/do3.do") ) {

			/*
			 * request.setAttribute("result", "do3 으로 요청보내기");
			 * request.getRequestDispatcher("do3.jsp").forward(request, response);
			 */
        	responseURI =  new Do3().execute(request, response);
        	
        }
        
        request.getRequestDispatcher(responseURI)
        		.forward(request, response);
        
    }
}





