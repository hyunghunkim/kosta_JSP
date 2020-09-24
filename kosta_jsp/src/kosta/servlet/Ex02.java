package kosta.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.ParameterParser;

@WebServlet("/FormServlet")		// Tomcat 서버의 server.xml의 context 경로 설정 마크업에 의해서 /JSP/ 없이도 mapping이 이뤄진다.
public class Ex02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ex02() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("테스트 출력");
		
		// Ex02.jsp에서 넘어온 데이터를 처리
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		int result = num1 + num2;
		
		// 서블릿에서 처리한 데이터를 jsp로 전송
		request.setAttribute("result", result);
		RequestDispatcher rd = request.getRequestDispatcher("/result.jsp");	// dispatcher : 새로운 request가 아니라 Ex02.jsp에서 넘어온 request의 연속(연장) 
		rd.forward(request, response);
		
		
	}

}
