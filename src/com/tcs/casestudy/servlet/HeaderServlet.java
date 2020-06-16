package com.tcs.casestudy.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HeaderServlet
 */
@WebServlet("/HeaderServlet")
public class HeaderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HeaderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd=null;
		String command=request.getParameter("submit");
		if(command.equals("CustomerManagement"))
		{
			rd=getServletContext().getRequestDispatcher("/CustomerManagement.jsp");
		}
		else if(command.equals("Logout"))
		{
			for(Cookie c:request.getCookies())
			{
				c.setMaxAge(0);
				response.addCookie(c);
				rd=getServletContext().getRequestDispatcher("/Login.jsp");
			}
		}
		else {
		rd=getServletContext().getRequestDispatcher("/Login.jsp");
		}rd.include(request, response);
	}

}
