package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.DBoy;
import com.klef.jfsd.springboot.repository.DBoyRepository;

@Service
public class DBoyServiceImpl implements DBoyService {
	@Autowired
 private DBoyRepository dboyrepository;
 
	@Override
	public DBoy checkdboylogin(String uname, String pwd) {
		
		return dboyrepository.checkdboylogin(uname, pwd);
	}
	
}
