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
import com.yaotrue.model.NewsLang;

/**
 * @author <a href="mailto:yaotrue@163.com">yaotrue</a>
 * 2017年8月15日 下午9:32:00
 */
public interface NewsLangMapper {

	void save(NewsLang newsLang);
	
	void batchSave(List<NewsLang> newsLangs);
	
	void update(NewsLang newsLang);
	
	void delete(@Param("id") Long id);
	
	void deleteByNewId(@Param("newId") Long newId);
	
	NewsLang getByPrimaryKey(@Param("id") Long id);
	
	NewsLang getByNewIdAndLang(@Param("newId") Long newId,@Param("lang")String lang);
	
	List<News> findByNewId(@Param("newId") Long newId);
	
	
}
