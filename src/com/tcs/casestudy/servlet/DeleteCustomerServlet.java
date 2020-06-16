package com.tcs.casestudy.servlet;
import java.io.IOException;
import java.io.PrintWriter;
import com.tcs.casestudy.userDAO.UserDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteCustomerServlet
 * @param <String>
 */
@WebServlet("/DeleteCustomerServlet")
public class DeleteCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteCustomerServlet() {
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
		String customername=request.getParameter("customerName");
		String age=request.getParameter("age");
		String address=request.getParameter("address");
	   boolen check= UserDAO.deleteCustomer(customerId,customername,age,address);
	    if (check==true)
	    {
	    	PrintWriter out=response.getWriter();
			out.println("<font color=red>Customer update initiated succesfully</font>");
			out.println("<font color=red>"+customerId+"</font>");
			out.println("<font color=red>"+customerName+"</font>");
			out.println("<font color=red>"+age+"</font>");
			out.println("<font color=red>"+address+"</font>");

			

	    	RequestDispatcher rd=getServletContext().getRequestDispatcher("/Home.jsp");
			rd.include(request, response);
	    }
	    
	    	
	    

}
}
