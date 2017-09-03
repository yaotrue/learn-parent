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
import java.util.Date;

/**
 * @author <a href="mailto:yaotrue@163.com">yaotrue</a> 2017年8月31日 下午12:59:31
 */
public class NewsImage implements Serializable {

	/**
	 * <code>{@value}</code>
	 */
	private static final long serialVersionUID = 8550795345652877732L;

	private Long id;

	/**新闻、博客ID*/
	private Long newsId;

	/**图片URI*/
	private String picUri;

	/**排序号*/
	private Integer sortNo;

	/**创建时间*/
	private Date createTime;

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
	 * @return the newsId
	 */
	public Long getNewsId() {
		return newsId;
	}

	/**
	 * @param newsId
	 *            the newsId to set
	 */
	public void setNewsId(Long newsId) {
		this.newsId = newsId;
	}

	/**
	 * @return the picUri
	 */
	public String getPicUri() {
		return picUri;
	}

	/**
	 * @param picUri
	 *            the picUri to set
	 */
	public void setPicUri(String picUri) {
		this.picUri = picUri;
	}

	/**
	 * @return the sortNo
	 */
	public Integer getSortNo() {
		return sortNo;
	}

	/**
	 * @param sortNo
	 *            the sortNo to set
	 */
	public void setSortNo(Integer sortNo) {
		this.sortNo = sortNo;
	}

	/**
	 * @return the createTime
	 */
	public Date getCreateTime() {
		return createTime;
	}

	/**
	 * @param createTime
	 *            the createTime to set
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

}
