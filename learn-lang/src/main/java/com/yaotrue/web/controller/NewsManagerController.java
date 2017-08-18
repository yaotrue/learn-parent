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

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.yaotrue.manager.NewsManager;
import com.yaotrue.model.News;
import com.yaotrue.web.command.NewCommand;

/**
 * @author <a href="mailto:yaotrue@163.com">yaotrue</a> 2017年8月16日 下午1:45:32
 */
@Controller
public class NewsManagerController extends BaseController {

	@Autowired
	private NewsManager newsManager;

	@RequestMapping(value = "/admin")
	public String admin(HttpServletRequest request, Model model) {
		List<News> news = newsManager.findByPageAndType(null, 0, 20);
		model.addAttribute("news", news);
		return "/admin/index";
	}

	@RequestMapping(value = "/admin/addNew")
	public String addNew(HttpServletRequest request, Model model) {
		return "/admin/edit-new";
	}

	@RequestMapping(value = "/admin/editNew")
	public String editNew(@RequestParam("newId") Long newId, HttpServletRequest request, Model model) {
		model.addAttribute("new", newsManager.getByPrimaryKey(newId));
		return "/admin/edit-new";
	}

	@RequestMapping(value = "/admin/saveNew", method = RequestMethod.POST)
	public String saveNew(@ModelAttribute NewCommand newCommand) {

		return "json";
	}
}
