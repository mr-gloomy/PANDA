package com.panda.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/test/*")
public class TestController {
	
	
	private static final Logger logger
				= LoggerFactory.getLogger(TestController.class);
	
	
	// http://localhost:8080/test/test
	@RequestMapping(value = "/test",method = RequestMethod.GET)
	public void testGET() {
		
		logger.debug(" testGET() 호출 ");
		
	}
	
	// http://localhost:8080/test/index
	@RequestMapping(value = "/index",method = RequestMethod.GET)
	public void indexGET() {
		
		logger.debug(" testGET() 호출 ");
		
	}
	
}
