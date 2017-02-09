package com.nupt.dao;


import java.io.FileWriter;
import java.io.IOException;
import java.util.Map;

public class FirstDao {
	public int store(Map<String,Object> map){
		//存储数据 数据库和文件
		String name = (String) map.get("name");
		String pwd = (String) map.get("pwd");
		String address = (String) map.get("address");
		String jf = String.valueOf(map.get("jf"));
		String sex = (String) map.get("sex");
		String[] sport = (String[]) map.get("sport");
		String[] fruit = (String[]) map.get("fruit");
		String suggestion = (String) map.get("suggestion");
		try {
			FileWriter fw = new FileWriter("E:/file/register.txt");
			fw.write("用户的注册信息"+"\r\n");
			fw.write("姓名："+name+"\r\n");
			fw.write("密码："+pwd+"\r\n");
			fw.write("住址："+address+"\r\n");
			fw.write("积分："+jf+"分"+"\r\n");
			fw.write("性别:"+sex+"\r\n");
			fw.write("喜欢的运动:");
			for(int i =0;i < sport.length;i++){
				fw.write(sport[i]+"  ");
			}
			fw.write("\r\n"+"喜欢的水果:");
			for(int i =0;i < fruit.length;i++){
				fw.write(fruit[i]+"  ");
			}
			fw.write("\r\n"+"建议与意见："+suggestion);
			fw.close();
		
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 1;
	}
}
