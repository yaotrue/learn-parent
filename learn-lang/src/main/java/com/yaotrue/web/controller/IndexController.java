/*
 * Copyright 1999-2017 YaoTrue.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.yaotrue.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author <a href="mailto:yaotrue@163.com">yaotrue</a>
 * 2017年7月26日 上午12:43:44
 */
@Controller
public class IndexController extends BaseController {
	
	private static final Logger LOG = LoggerFactory.getLogger(IndexController.class);

	@Value("${test.encrypt}")
	private String testEncrypt;
	
	@RequestMapping("/")
	public String indexPage(Model model){
		LOG.debug("into index page");
		LOG.debug("properties encrypt text:{}",testEncrypt);
		model.addAttribute("navbar", "index");
		return "index";
	}
	
	@RequestMapping("/about-us.htm")
	public String aboutUs(Model model){
		model.addAttribute("navbar", "aboutus");
		return "about-us";
	}
	
	@RequestMapping("/join-us.htm")
	public String joinUs(Model model){
		model.addAttribute("navbar", "joinus");
		return "join-us";
	}
	
	@RequestMapping("/project.htm")
	public String project(Model model){
		model.addAttribute("navbar", "project");
		return "project";
	}
	
	@RequestMapping("/schedule.htm")
	public String schedule(Model model){
		model.addAttribute("navbar", "schedule");
		return "schedule";
	}
	
	@RequestMapping("/news.htm")
	public String news(Model model){
		model.addAttribute("navbar", "news");
		return "news";
	}
	
	@RequestMapping("/low.htm")
	public String low(Model model){
		model.addAttribute("navbar", "index");
		return "low";
	}
	
	@RequestMapping("/policy.htm")
	public String policy(Model model){
		model.addAttribute("navbar", "index");
		return "policy";
	}
}
