/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlets;

import com.entities.User;
import com.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author devan
 */
public class RegisterServlet extends HttpServlet {
             private static final long serialVersionUID = 1L;
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
            try{
               String userName=request.getParameter("uname");
               String userEmail = request.getParameter("uemail") ;
	       String userPassword = request.getParameter("upassword") ;
	       String userPhone =  request.getParameter("uphone") ;
               long uphn  = Long.parseLong(userPhone); 
	       String userAddress = request.getParameter("uaddress") ;	
               PrintWriter out = response.getWriter() ; 
               User user = new User(userName,userEmail,userPassword,uphn,"default.png",userAddress,"normalUser"); 
	       Session hibernateSession = FactoryProvider.getFactory().openSession() ;	 		
	       Transaction tx = hibernateSession.beginTransaction();  
               hibernateSession.save(user) ;
                tx.commit();  
		hibernateSession.close();
                 HttpSession httpSession = request.getSession() ; 
			 httpSession.setAttribute("message", "Sucessfully Register");
			 response.sendRedirect("Register.jsp");
		} catch (Exception e) {
			 
			e.printStackTrace();
		}
            }
        }
    



