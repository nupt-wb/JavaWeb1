package com.nupt.controller;


import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;


import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/cs")
public class CookieSession extends HttpServlet {
	protected void doGet(HttpServletRequest request,HttpServletResponse response){
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		
		System.out.println(name);

		//到数据库查看是否有该用户
		//假如有该用户
		

		System.out.println("************");
		Cookie cookie =null;
		try {
			System.out.println("编码之前name:"+name);
			System.out.println("编码之后name:"+URLEncoder.encode(name,"UTF-8"));
			cookie = new Cookie("name",URLEncoder.encode(name,"UTF-8"));
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		cookie.setMaxAge(60*30);
		cookie.setDomain("localhost");
		cookie.setPath("/");   //回去自己研究
		

//		
		Cookie cookie1 = null;
		try {
			System.out.println("编码之前pwd:"+pwd);
			System.out.println("编码之后pwd:"+URLEncoder.encode(pwd,"UTF-8"));
			cookie1 = new Cookie("pwd",URLEncoder.encode(pwd,"UTF-8"));
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		cookie1.setMaxAge(60*30);
		cookie1.setDomain("localhost");
		cookie1.setPath("/");   //回去自己研究
		
		response.addCookie(cookie);
		response.addCookie(cookie1);
		
		Cookie [] cookies = request.getCookies();
		
		System.out.println("hhhhhhhhhhhh");
		System.out.println(cookies.length);
		for(int i=0;i<cookies.length;i++){
			System.out.println(cookies[i].getName()+":"+cookies[i].getValue());
		}
	      
	      
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/jsp/success.jsp");
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
