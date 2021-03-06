package com.nupt.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nupt.dao.FirstDao;
import com.nupt.service.FirstService;
import com.nupt.service.implement.FirstServiceImplement;
@WebServlet("/a") 
public class First extends HttpServlet{
	protected void doGet(HttpServletRequest request,HttpServletResponse response){
		
		doPost(request,response);
	}
	protected void doPost(HttpServletRequest request,HttpServletResponse response){
    
		
//		//后台解码
//		try {
//			//锟斤拷锟斤拷锟斤拷锟斤拷
//			String name = request.getParameter("a1");
//			name = java.net.URLDecoder.decode(name,"UTF-8");
//			System.out.println("==========="+name);
//			request.setCharacterEncoding("UTF-8");
//		} catch (UnsupportedEncodingException e1) {
//			// TODO Auto-generated catch block
//			e1.printStackTrace();
//		}
//		//jsp锟斤拷值锟斤拷servlet
//		String name = request.getParameter("name");
//		String pwd = request.getParameter("pwd");
//		String sex = request.getParameter("sex");
//		String[] sport = request.getParameterValues("sport");
//		String[] fruit = request.getParameterValues("fruit");
//		String suggestion = request.getParameter("suggestion");
//		
//		System.out.println("name:"+name);
//		System.out.println("pwd:"+pwd);
//		System.out.println("sex:"+sex);
//		System.out.println("What sports do you like:");
//		for(int i =0; i < sport.length;i++){
//			System.out.print(sport[i]+"  ");
//		}
//		System.out.println();
//		System.out.println("What fruits do you like:");
//		for(int i =0; i < fruit.length;i++){
//			System.out.print(fruit[i]+"  ");
//		}
//		System.out.println();
//		System.out.println("Your suggestion is :"+suggestion);
//		
//		//servlet锟斤拷值锟斤拷jsp
//		Map<String,Object> m = new HashMap<String,Object>();
//		m.put("name", name);
//		m.put("pwd", pwd);
//		request.setAttribute("name",name);
//		request.setAttribute("pwd", pwd);
//		request.setAttribute("sex", sex);
//		request.setAttribute("sport", sport);
//		request.setAttribute("fruit", fruit);
//		request.setAttribute("suggsetion", suggestion);

		
		
		//锟斤拷台锟斤拷转
		
		try {
			String name =request.getParameter("txtName");
			String pwd =request.getParameter("txtPwd");
			String address =request.getParameter("txtAddress");
			String sex = request.getParameter("sex");
			String[] sport = request.getParameterValues("sport");
			String[] fruit = request.getParameterValues("fruit");
			String suggestion = request.getParameter("suggestion");
			
			if(judge(name,pwd,address)){
				Map<String,Object> map = new HashMap<String,Object>();
				map.put("name", name);
				map.put("pwd",pwd);
				map.put("address",address);
				map.put("sex", sex);
				map.put("sport", sport);
			    map.put("fruit", fruit);
				map.put("suggestion", suggestion);
				//store data
				FirstService fs = new FirstServiceImplement();
				
				if(fs.store(map) > 0){
					
					
					RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/jsp/showInf.jsp");
					rd.forward(request, response);
				}else{
					RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/jsp/register.jsp");
					rd.forward(request, response);
				}
			}else{
				RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/jsp/error.jsp");
				rd.forward(request, response);
			}
		
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	private boolean judge(String name,String pwd,String address){
		boolean flag = true;
		if(name == null || name.length() > 4 || name.trim().equals("")){
			flag =false;
		}
		if(pwd == null || pwd.trim().equals("")){
			flag = false;
		}
		if(address == null || address.trim().equals("")){
			flag = false;
		}
		return flag;
	}
}
