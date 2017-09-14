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
package com.yaotrue.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yaotrue.model.NewsImage;

/**
 * @author <a href="mailto:yaotrue@163.com">yaotrue</a>
 * 2017年8月31日 下午1:38:07
 */
public interface NewsImageMapper {

	void save(NewsImage newsImage);
	
	void batchSave(List<NewsImage> newsImages);
	
	void update(NewsImage newsImage);
	
	void delete(@Param("id") Long id);
	
	void deleteByNewId(@Param("newId") Long newId);
	
	NewsImage getByPrimaryKey(@Param("id") Long id);
	
	List<NewsImage> findByNewId(@Param("newId") Long newId);

	/**
	 * @author <a href="mailto:yaotrue@163.com">yaotrue</a>
	 * 2017年9月14日 上午12:49:28
	 * @param newsId
	 * @return
	 */
	Integer getMaxSortNo(@Param("newId") Long newsId);
	
	NewsImage getDownImage(@Param("newId") Long newsId,@Param("sortNo") Integer sortNo);
	
	NewsImage getUpImage(@Param("newId") Long newsId,@Param("sortNo") Integer sortNo);
}
