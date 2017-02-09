package com.nupt.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/userlogin")
public class CsSession extends HttpServlet{
	protected void doGet(HttpServletRequest request,HttpServletResponse response){
		//设置字符集编码格式，解决中文乱码问题
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		//获得用户名和密码，并保存到session中
		HttpSession httpSession = request.getSession();
		
		String name = request.getParameter("userName");
		String pwd = request.getParameter("pwd");
		
		httpSession.setAttribute("userName", name);
		httpSession.setAttribute("pwd",pwd);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/jsp/homework/votepage.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	protected void doPost(HttpServletRequest request,HttpServletResponse response){
		doGet(request,response);
	}
}
