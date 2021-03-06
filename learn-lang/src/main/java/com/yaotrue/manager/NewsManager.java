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

import com.yaotrue.model.News;
import com.yaotrue.web.command.NewCommand;
import com.yaotrue.web.command.NewsViewCommand;

/**
 * @author <a href="mailto:yaotrue@163.com">yaotrue</a>
 * 2017年8月15日 下午9:35:43
 */
public interface NewsManager {

	News save(News news);
	
	News update(News news);
	
	void delete(Long id);
	
	News getByPrimaryKey(Long id);
	
	NewCommand getByNewsId(Long newsId);
	
	List<News> findNewsByTypeAndCount(Byte type,Integer count);
	
	List<News> findByPageAndType(Byte type,Integer start,Integer pageSize);
	
	void save(NewCommand newCommand);
	
	List<NewsViewCommand> findByLang(String lang);
	
	List<NewsViewCommand> findByTypeAndLang(Byte type,String lang,Integer limit);
	
	List<NewsViewCommand> findByTypesAndLang(List<Byte> type,String lang);
	
}
