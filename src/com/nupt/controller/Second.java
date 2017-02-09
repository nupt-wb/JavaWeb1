package com.nupt.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/second")
public class Second extends HttpServlet{
	protected void doGet(HttpServletRequest request, HttpServletResponse response){
		
		
		try{
			//获取前台jsp值
		        String name = request.getParameter("name");
		        String address = request.getParameter("address");
		        String t = request.getParameter("t");
	
		        System.out.println("name： "+name);
		        System.out.println("address： "+address);
		        System.out.println("t： "+t);
	

		       // response.setContentType("text/html");
				PrintWriter out=response.getWriter();
			
				String str="Welcome!"+name+",your address is "+address+"!";
				//将处理结果返回给客户端
				//out.println(str);
				out.write(str);
				out.flush();
				out.close();

			}catch(Exception ex){
				
			}
	}	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response){
		doGet(request, response);
	}
}
