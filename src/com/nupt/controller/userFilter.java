package com.nupt.controller;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;


@WebFilter("/userlogin")
public class userFilter implements Filter {


    public userFilter() {
        // TODO Auto-generated constructor stub
    }


	public void destroy() {
		// TODO Auto-generated method stub
	}


	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)  {

		String name = request.getParameter("userName");
		System.out.println(name);
		name = name.substring(0, 5);
		System.out.println(name);
		RequestDispatcher rd = null;
		if(!name.equals("admin")){
			 rd = request.getRequestDispatcher("WEB-INF/jsp/homework/votepage.jsp");
			try {
				
				rd.forward(request, response);
			} catch (ServletException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}else{
			 rd = request.getRequestDispatcher("WEB-INF/jsp/homework/votelogin.jsp");
			 try {
				
				rd.forward(request, response);
			
			} catch (ServletException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			System.out.println("管理员不允许投票！");
		}
		// pass the request along the filter chain

	}


	public void init(FilterConfig fConfig) throws ServletException {
	
	}

}
