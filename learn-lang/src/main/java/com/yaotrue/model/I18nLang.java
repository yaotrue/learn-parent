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
package com.yaotrue.model;

import java.io.Serializable;

/**
 * @author <a href="mailto:yaotrue@163.com">yaotrue</a> 2017年7月28日 下午3:01:33
 */
public class I18nLang implements Serializable {

	/**
	 * <code>{@value}</code>
	 */
	private static final long serialVersionUID = -5078440740816222069L;

	/** 语言标识 */
	private String key;

	/** 语言名称 */
	private String value;
	
	/**
	 * Creates a new instance of I18nLang.
	 */
	public I18nLang() {
		// TODO Auto-generated constructor stub
	}
	
	public I18nLang(String key,String value){
		this.key = key;
		this.value = value;
	}

	/**
	 * @return the key
	 */
	public String getKey() {
		return key;
	}

	/**
	 * @param key
	 *            the key to set
	 */
	public void setKey(String key) {
		this.key = key;
	}

	/**
	 * @return the value
	 */
	public String getValue() {
		return value;
	}

	/**
	 * @param value
	 *            the value to set
	 */
	public void setValue(String value) {
		this.value = value;
	}

}
