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
package com.yaotrue.web.interceptor;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.yaotrue.model.I18nLang;

/**
 * @author <a href="mailto:yaotrue@163.com">yaotrue</a>
 * 2017年7月28日 下午2:58:54
 */
public class LangInterceptor extends HandlerInterceptorAdapter {

	private static final Logger LOG = LoggerFactory.getLogger(LangInterceptor.class);
	
	private static final String I18N_LANGS_KEY = "i18nLangs";
	private static final String CURRENT_LANG_KEY = "currentLang";
	
	private static final String DEFAULT_LANG = "zh_CN";
	
	private static final List<I18nLang> I18N_LANGS = new ArrayList<>();
	static{
		I18nLang zhCnLang = new I18nLang("zh_CN","中文");
		I18nLang enUsLang = new I18nLang("en_US","英文");
		I18N_LANGS.add(zhCnLang);
		I18N_LANGS.add(enUsLang);
	}
	
	private static final Map<String, I18nLang> langsMap = new HashMap<>();
	static{
		for(I18nLang i18nLang : I18N_LANGS){
			langsMap.put(i18nLang.getKey(), i18nLang);
		}
	}
	
	/* (non-Javadoc)
	 * @see org.springframework.web.servlet.handler.HandlerInterceptorAdapter#preHandle(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, java.lang.Object)
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		LocaleResolver localeResolver = RequestContextUtils.getLocaleResolver(request);
		
		Locale locale = RequestContextUtils.getLocale(request);
		
		String lang = locale.toString();
		if(null != langsMap.get(lang)){
			LOG.debug("get lang by key:{}",lang);
			request.setAttribute(CURRENT_LANG_KEY, langsMap.get(lang));
			localeResolver.setLocale(request, response, StringUtils.parseLocaleString(lang));
		}else{
			request.setAttribute(CURRENT_LANG_KEY, langsMap.get(DEFAULT_LANG));
			localeResolver.setLocale(request, response, StringUtils.parseLocaleString(DEFAULT_LANG));
		}
		request.setAttribute(I18N_LANGS_KEY, I18N_LANGS);
		
		return super.preHandle(request, response, handler);
	}
}
