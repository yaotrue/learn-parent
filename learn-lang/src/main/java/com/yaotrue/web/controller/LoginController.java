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

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.alibaba.druid.util.StringUtils;

/**
 * @author <a href="mailto:yaotrue@163.com">yaotrue</a>
 * 2017年8月16日 下午1:56:09
 */
@Controller
public class LoginController extends BaseController {

	@RequestMapping(value = "/login",method=RequestMethod.GET)
	public String toLoin(){
		return "login";
	}
	
	@RequestMapping(value = "/login",method=RequestMethod.POST)
	public String login(@RequestParam("userName")String userName,@RequestParam("password")String password){
		if(StringUtils.isEmpty(userName) || StringUtils.isEmpty(password)){
			return "redirect:/login";
		}
		
		if(!"zys".equals(userName) || !"123456".equals(password)){
			return "redirect:/login";
		}
		return "redirect:/admin/";
	}
}
