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
 * @author <a href="mailto:yaotrue@163.com">yaotrue</a> 2017年8月15日 下午9:21:04
 */
public class News implements Serializable {

	/**
	 * <code>{@value}</code>
	 */
	private static final long serialVersionUID = 2512686477738409024L;
	
	/**类型：新闻*/
	public static final Byte TYPE_NEWS = 1;
	
	/**类型：项目*/
	public static final Byte TYPE_PROJECT = 2;
	
	/**类型：日程*/
	public static final Byte TYPE_SCHEDULE = 3;
	
	/**类型：首页KV*/
	public static final Byte TYPE_INDEX_KV = 4;
	
	/**状态：初始化*/
	public static final Byte STATUS_INIT = 1;
	
	/**状态：启用*/
	public static final Byte STATUS_ENABLE = 2;
	
	/**状态：不启用*/
	public static final Byte STATUS_DISABLE = 3;
	
	/**状态：删除*/
	public static final Byte STATUS_DELETE = 4;

	private Long id;

	private Date createTime = new Date();

	private Byte type;

	private Byte status = STATUS_INIT;

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
