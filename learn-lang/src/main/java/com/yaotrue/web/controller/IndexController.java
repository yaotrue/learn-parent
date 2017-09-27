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

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.yaotrue.manager.NewsManager;
import com.yaotrue.model.News;

/**
 * @author <a href="mailto:yaotrue@163.com">yaotrue</a> 2017年7月26日 上午12:43:44
 */
@Controller
public class IndexController extends BaseController {

	private static final Logger LOG = LoggerFactory.getLogger(IndexController.class);

	@Autowired
	private NewsManager newsManager;

	@RequestMapping("/")
	public String indexPage(Model model, HttpServletRequest request) {
		LOG.debug("into index page");
		// 查询最新的三篇头条新闻
		model.addAttribute("headerlineNews", newsManager.findByTypeAndLang(News.TYPE_HEADERLINE_NEWS,
				RequestContextUtils.getLocale(request).toString(), 3));

		// 查询最新的三篇峰会新闻
		model.addAttribute("indexNews",
				newsManager.findByTypeAndLang(News.TYPE_NEWS, RequestContextUtils.getLocale(request).toString(), 3));

		// 查询最新的两篇峰会项目
		model.addAttribute("indexProject",
				newsManager.findByTypeAndLang(News.TYPE_PROJECT, RequestContextUtils.getLocale(request).toString(), 2));

		model.addAttribute("navbar", "index");
		return "index";
	}

	@RequestMapping("/about-us.htm")
	public String aboutUs(Model model) {
		model.addAttribute("navbar", "aboutus");
		return "about-us";
	}

	@RequestMapping("/join-us.htm")
	public String joinUs(Model model) {
		model.addAttribute("navbar", "joinus");
		return "join-us";
	}

	@RequestMapping("/project.htm")
	public String project(Model model,HttpServletRequest request) {
		// 查询所有的峰会项目
		model.addAttribute("allProject",
				newsManager.findByTypeAndLang(News.TYPE_PROJECT, RequestContextUtils.getLocale(request).toString(), null));
		model.addAttribute("navbar", "project");
		return "project";
	}

	@RequestMapping("/schedule.htm")
	public String schedule(Model model,HttpServletRequest request) {
		// 查询所有的峰会日程
		model.addAttribute("allSchedule",
				newsManager.findByTypeAndLang(News.TYPE_SCHEDULE, RequestContextUtils.getLocale(request).toString(), null));
		model.addAttribute("navbar", "schedule");
		return "schedule";
	}

	@RequestMapping("/news.htm")
	public String news(Model model,HttpServletRequest request) {
		// 查询最新的五篇峰会新闻
		model.addAttribute("allNews",
				newsManager.findByTypeAndLang(News.TYPE_NEWS, RequestContextUtils.getLocale(request).toString(), 5));
		model.addAttribute("navbar", "news");
		return "news";
	}
	
	@RequestMapping("/recent-news.htm")
	public String recentNews(Model model,HttpServletRequest request) {
		List<Byte> types = new ArrayList<>();
		types.add(News.TYPE_NEWS);
		types.add(News.TYPE_HEADERLINE_NEWS);
		// 查询所有的新闻（包含头条新闻和峰会新闻）
		model.addAttribute("allNews",
				newsManager.findByTypesAndLang(types, RequestContextUtils.getLocale(request).toString()));
		model.addAttribute("navbar", "news");
		return "recent-news";
	}
	
	@RequestMapping("/headline-news.htm")
	public String headlineNews(Model model,HttpServletRequest request) {
		// 查询前三篇头条新闻
		model.addAttribute("headerlineNews",
				newsManager.findByTypeAndLang(News.TYPE_HEADERLINE_NEWS, RequestContextUtils.getLocale(request).toString(), 3));
		return "headerline-news";
	}

	@RequestMapping("/low.htm")
	public String low(Model model) {
		model.addAttribute("navbar", "index");
		return "low";
	}

	@RequestMapping("/policy.htm")
	public String policy(Model model) {
		model.addAttribute("navbar", "index");
		return "policy";
	}
}
