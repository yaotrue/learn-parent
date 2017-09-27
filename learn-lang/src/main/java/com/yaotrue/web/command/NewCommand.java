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
package com.yaotrue.web.command;

/**
 * @author <a href="mailto:yaotrue@163.com">yaotrue</a> 2017年8月16日 下午9:15:32
 */
public class NewCommand extends BaseCommand {

	/**
	 * <code>{@value}</code>
	 */
	private static final long serialVersionUID = 6732505915393715598L;

	private Long id;

	private String title_zh;

	private String title_en;
	
	private String intro_zh;

	private String intro_en;

	private String content_zh;

	private String content_en;

	private String author_zh;

	private String author_en;

	private Byte type;

	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @return the title_zh
	 */
	public String getTitle_zh() {
		return title_zh;
	}

	/**
	 * @param title_zh
	 *            the title_zh to set
	 */
	public void setTitle_zh(String title_zh) {
		this.title_zh = title_zh;
	}

	/**
	 * @return the title_en
	 */
	public String getTitle_en() {
		return title_en;
	}

	/**
	 * @param title_en
	 *            the title_en to set
	 */
	public void setTitle_en(String title_en) {
		this.title_en = title_en;
	}

	/**
	 * @return the intro_zh
	 */
	public String getIntro_zh() {
		return intro_zh;
	}

	/**
	 * @param intro_zh the intro_zh to set
	 */
	public void setIntro_zh(String intro_zh) {
		this.intro_zh = intro_zh;
	}

	/**
	 * @return the intro_en
	 */
	public String getIntro_en() {
		return intro_en;
	}

	/**
	 * @param intro_en the intro_en to set
	 */
	public void setIntro_en(String intro_en) {
		this.intro_en = intro_en;
	}

	/**
	 * @return the content_zh
	 */
	public String getContent_zh() {
		return content_zh;
	}

	/**
	 * @param content_zh
	 *            the content_zh to set
	 */
	public void setContent_zh(String content_zh) {
		this.content_zh = content_zh;
	}

	/**
	 * @return the content_en
	 */
	public String getContent_en() {
		return content_en;
	}

	/**
	 * @param content_en
	 *            the content_en to set
	 */
	public void setContent_en(String content_en) {
		this.content_en = content_en;
	}

	/**
	 * @return the author_zh
	 */
	public String getAuthor_zh() {
		return author_zh;
	}

	/**
	 * @param author_zh
	 *            the author_zh to set
	 */
	public void setAuthor_zh(String author_zh) {
		this.author_zh = author_zh;
	}

	/**
	 * @return the author_en
	 */
	public String getAuthor_en() {
		return author_en;
	}

	/**
	 * @param author_en
	 *            the author_en to set
	 */
	public void setAuthor_en(String author_en) {
		this.author_en = author_en;
	}

	/**
	 * @return the type
	 */
	public Byte getType() {
		return type;
	}

	/**
	 * @param type
	 *            the type to set
	 */
	public void setType(Byte type) {
		this.type = type;
	}

}
