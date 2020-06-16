package com.tcs.casestudy.servlet;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import com.tcs.casestudy.userDAO.UserDAO;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		System.out.println("inside login servlet");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		System.out.println(username);
			if(UserDAO.bankEmployeeLogin(username,password,response))
			{
				System.out.println(username);
			RequestDispatcher rd=getServletContext().getRequestDispatcher("/Home.jsp");
			rd.include(request, response);
			}
			else {

				RequestDispatcher rd=getServletContext().getRequestDispatcher("/Login.jsp");
				rd.include(request, response);	
			}
		}
		

}
