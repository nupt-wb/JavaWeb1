package com.nupt.service.implement;

import java.util.Map;

import com.nupt.dao.FirstDao;
import com.nupt.service.FirstService;

public class FirstServiceImplement implements FirstService{

	public int store(Map<String, Object> map) {
		map.put("jf",10);
		FirstDao fd = new FirstDao();
		fd.store(map);
		return 1;
	}

}
