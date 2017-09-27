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

import com.yaotrue.model.News;
import com.yaotrue.web.command.NewsViewCommand;

/**
 * @author <a href="mailto:yaotrue@163.com">yaotrue</a>
 * 2017年8月15日 下午9:32:00
 */
public interface NewsMapper {

	void save(News news);
	
	void update(News news);
	
	void delete(@Param("id") Long id);
	
	News getByPrimaryKey(@Param("id") Long id);
	
	List<News> findNewsByTypeAndCount(@Param("type") Byte type,@Param("count") Integer count);
	
	List<News> findByPageAndType(@Param("type") Byte type,@Param("start") Integer start,@Param("pageSize") Integer pageSize);
	
	List<NewsViewCommand> findByLang(@Param("lang") String lang);
	
	List<NewsViewCommand> findByTypeAndLang(@Param("type") Byte type,@Param("lang") String lang,@Param("limit")Integer limit);

	/**
	 * @author <a href="mailto:yaotrue@163.com">yaotrue</a>
	 * 2017年9月23日 上午9:21:35
	 * @param type
	 * @param lang
	 * @return
	 */
	List<NewsViewCommand> findByTypesAndLang(@Param("types") List<Byte> type,@Param("lang")  String lang);
}
