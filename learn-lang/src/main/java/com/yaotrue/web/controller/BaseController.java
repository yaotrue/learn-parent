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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;

/**
 * @author <a href="mailto:yaotrue@163.com">yaotrue</a> 2017年7月15日 上午10:35:22
 */
public class BaseController {

	@Autowired
	private MessageSource messageSource;

	/**
	 * 获取i18n信息
	 * 
	 * @param key
	 * @return
	 */
	protected String getMessage(String key) {
		return getMessage(key, new Object[] {});
	}

	/**
	 * 获取i18n信息
	 * 
	 * @param key
	 * @param params
	 * @return
	 */
	protected String getMessage(String key, Object[] params) {
		return messageSource.getMessage(key, params, LocaleContextHolder.getLocale());
	}

}
