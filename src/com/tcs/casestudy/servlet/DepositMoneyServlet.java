package com.tcs.casestudy.servlet;
import com.tcs.casestudy.userDAO.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DepositMoneyServlet
 */
@WebServlet("/DepositMoneyServlet")
public class DepositMoneyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DepositMoneyServlet() {
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
		String customerId=request.getParameter("customerId");
		String accountId=request.getParameter("accountId");
		String accountType=request.getParameter("accountType");
		String balance=request.getParameter("balance");
		String depositAmount=request.getParameter("depositAmount");
		System.out.println(customerId);
		boolean check=UserDAO.depositAmount(customerId,accountId,accountType,balance,depositAmount);
		if(check==true)
		{	PrintWriter out=response.getWriter();
			out.println("<p></p>");
			
		}
	}

}
