package org.software.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;

import org.software.purchase.PurchaseService;
import org.software.reviews.Review;
import org.software.util.DataBase;

@SuppressWarnings("serial")
@Path("/user")
public class UserService extends HttpServlet  {
	User user = new User();
	UserDAO userDAO = new UserDAO();
	int r=0;
	
	@SuppressWarnings("unused")

	@Path("/login")
	@Produces("application/json")
	
	
	public void processRequest(@Context HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		String accion=request.getParameter("accion");
		if(accion.equals("Ingresar")) {
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			String username=request.getParameter("username");
			String id=request.getParameter("id");
			user.setEmail(email);
			user.setPassword(password);
			r=userDAO.validar(user);
			if(r==1) {
				request.getSession().setAttribute("email", email);
				request.getSession().setAttribute("password", password);
				request.getSession().setAttribute("username", username);
				request.getSession().setAttribute("id", id);
				request.getRequestDispatcher("user/index.jsp").forward(request, response);
			}else {
				request.getRequestDispatcher("home/index.jsp").forward(request, response);
			}
		}
		

	}


}
