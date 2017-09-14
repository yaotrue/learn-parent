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
package com.yaotrue.manager;

import java.util.List;

import com.yaotrue.model.NewsImage;

/**
 * @author <a href="mailto:yaotrue@163.com">yaotrue</a>
 * 2017年9月14日 上午12:14:07
 */
public interface NewsImageManager {

	NewsImage save(NewsImage newsImage);
	
	List<NewsImage> findImageByNewId(Long newId);

	/**
	 * @author <a href="mailto:yaotrue@163.com">yaotrue</a>
	 * 2017年9月14日 上午12:44:32
	 * @param imageId
	 */
	void deleteImage(Long imageId);
	
	Integer getMaxSortNo(Long newsId);

	/**
	 * @author <a href="mailto:yaotrue@163.com">yaotrue</a>
	 * 2017年9月14日 上午12:54:11
	 * @param imageId
	 */
	void moveImage(Long imageId,Integer type);
}
