package com.airbnb.web.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/guide")
public class GuideController {
	private static final Logger logger = LoggerFactory.getLogger(GuideController.class);
	@RequestMapping("/content")
	public String guideMgmt(){
		logger.info("GuideController ! content() ");
		return "guide:guide/content.tiles";
	}
	
	@RequestMapping("/conten2t")
	public String guideMgmt2(){
		logger.info("GuideController ! content2() ");
		return "guide/content2.jsp";
	}
	
	@RequestMapping("/header")
	public String guideHeader(){
		logger.info("---- Guide_CONTROLLER HEADER PASS ----");
		return "guide/header.jsp";
	}

	@RequestMapping("/sidenav")
	public String guideSideNav(){
		logger.info("---- Guide_CONTROLLER SIDENAV PASS ----");
		return "guide/sidenav.jsp";
	}
	@RequestMapping("/footer")
	public String guideFooter(){
		logger.info("---- Guide_CONTROLLER FOOTER PASS ----");
		return "guide/footer.jsp";
	}
}