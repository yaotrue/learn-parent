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
 * @author <a href="mailto:yaotrue@163.com">yaotrue</a>
 * 2017年8月16日 下午9:15:32
 */
public class NewCommand extends BaseCommand {

	/**
	 * <code>{@value}</code>
	 */
	private static final long serialVersionUID = 6732505915393715598L;
	
	private Long id;
	
	private String title;

	private String content;

	private String smallImgUri;

	private String bigImgUri;

	private String author;

	private Byte type;

	private Byte status;

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
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * @param title
	 *            the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * @return the content
	 */
	public String getContent() {
		return content;
	}

	/**
	 * @param content
	 *            the content to set
	 */
	public void setContent(String content) {
		this.content = content;
	}

	/**
	 * @return the smallImgUri
	 */
	public String getSmallImgUri() {
		return smallImgUri;
	}

	/**
	 * @param smallImgUri
	 *            the smallImgUri to set
	 */
	public void setSmallImgUri(String smallImgUri) {
		this.smallImgUri = smallImgUri;
	}

	/**
	 * @return the bigImgUri
	 */
	public String getBigImgUri() {
		return bigImgUri;
	}

	/**
	 * @param bigImgUri
	 *            the bigImgUri to set
	 */
	public void setBigImgUri(String bigImgUri) {
		this.bigImgUri = bigImgUri;
	}

	/**
	 * @return the author
	 */
	public String getAuthor() {
		return author;
	}

	/**
	 * @param author
	 *            the author to set
	 */
	public void setAuthor(String author) {
		this.author = author;
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

	/**
	 * @return the status
	 */
	public Byte getStatus() {
		return status;
	}

	/**
	 * @param status
	 *            the status to set
	 */
	public void setStatus(Byte status) {
		this.status = status;
	}

}
