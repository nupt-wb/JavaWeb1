package com.nupt.controller;

import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/abc")
public class Test2_AJAX extends HttpServlet{
	protected void doGet(HttpServletRequest request,HttpServletResponse response){
		try{
			PrintWriter pw = response.getWriter();
			System.out.println(request.getParameter("name"));
			System.out.println(request.getParameter("uuid"));
			pw.write("i love you");
			pw.flush();
			pw.close();
		}catch(Exception e){
			
		}
	}
	
	protected void doPost(HttpServletRequest request,HttpServletResponse response){
		doGet(request,response);
	}
}
