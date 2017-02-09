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

@WebServlet("/vote")
public class VoteResult extends HttpServlet{
	protected void doGet(HttpServletRequest request,HttpServletResponse response){
		//设置字符集编码方式
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int flag = 0;
		HttpSession httpSession = request.getSession();
		Object totalNumber = httpSession.getAttribute("color");

		Object red =  httpSession.getAttribute("red");
		Object white =  httpSession.getAttribute("white");
		Object black =  httpSession.getAttribute("black");
		Object blue = httpSession.getAttribute("blue");
		
		String voteResult = request.getParameter("color");

		if(red == null){
			httpSession.setAttribute("red", 0);
			if(("red").equals(voteResult)){
				red =  httpSession.getAttribute("red");
				httpSession.setAttribute("red",Integer.parseInt(red.toString())+1);
				flag = 1;
			}
		}else{
			if(("red").equals(voteResult)){
				httpSession.setAttribute("red",Integer.parseInt(red.toString())+1);
				flag = 1;
			}
			
		}
		
		if(white == null){
			httpSession.setAttribute("white",0);
			white =  httpSession.getAttribute("white");
			if(("white").equals(voteResult)){
				httpSession.setAttribute("white",Integer.parseInt(white.toString())+1);
				flag = 1;
			}
		}else{
			if(("white").equals(voteResult)){
				httpSession.setAttribute("white",Integer.parseInt(white.toString())+1);
				flag = 1;
			}
		}
		
		if(black == null){
			httpSession.setAttribute("black",0);
			httpSession.getAttribute("black");
			if(("black").equals(voteResult)){
				httpSession.setAttribute("black",Integer.parseInt(black.toString())+1);
				flag = 1;
			}
		}else{
			if(("black").equals(voteResult)){
				httpSession.setAttribute("black",Integer.parseInt(black.toString())+1);
				flag = 1;
			}
		}
		
		if(blue == null){
			httpSession.setAttribute("blue", 0);
			blue = httpSession.getAttribute("blue");
			if(("blue").equals(voteResult)){
				httpSession.setAttribute("blue",Integer.parseInt(blue.toString())+1);
				flag = 1;
			}
		}else{
			if(("blue").equals(voteResult)){
				httpSession.setAttribute("blue",Integer.parseInt(blue.toString())+1);
				flag = 1;
			}
		}

		
		if(totalNumber == null){
			if (flag == 1)
				httpSession.setAttribute("color",1);
			else{
				httpSession.setAttribute("color",0);
			}
		}else{
			if (flag == 1){
				httpSession.setAttribute("color", Integer.parseInt(totalNumber.toString())+1);
			}
			
		}
		RequestDispatcher rd = null;
		if(Integer.parseInt(httpSession.getAttribute("color").toString()) == 0){
			rd = request.getRequestDispatcher("WEB-INF/jsp/homework/back.jsp");
		}else{
			rd = request.getRequestDispatcher("WEB-INF/jsp/homework/voteresult.jsp");
		}
		
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	protected void goPost(HttpServletRequest request,HttpServletResponse response){
		doGet(request,response);
		
	}
}
