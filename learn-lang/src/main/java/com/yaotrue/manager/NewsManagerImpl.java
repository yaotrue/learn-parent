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

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yaotrue.mapper.NewsLangMapper;
import com.yaotrue.mapper.NewsMapper;
import com.yaotrue.model.News;
import com.yaotrue.model.NewsLang;
import com.yaotrue.util.LangUtil;
import com.yaotrue.web.command.NewCommand;
import com.yaotrue.web.command.NewsViewCommand;

/**
 * @author <a href="mailto:yaotrue@163.com">yaotrue</a>
 * 2017年8月15日 下午9:36:10
 */
@Service
@Transactional
public class NewsManagerImpl implements NewsManager {
	
	@Autowired
	private NewsMapper	newsMapper;
	
	@Autowired
	private NewsLangMapper	newsLangMapper;

	/* (non-Javadoc)
	 * @see com.yaotrue.manager.NewsManager#save(com.yaotrue.model.News)
	 */
	@Override
	public News save(News news) {
		newsMapper.save(news);
		
		return news;
	}

	/* (non-Javadoc)
	 * @see com.yaotrue.manager.NewsManager#update(com.yaotrue.model.News)
	 */
	@Override
	public News update(News news) {
		newsMapper.update(news);
		return news;
	}

	/* (non-Javadoc)
	 * @see com.yaotrue.manager.NewsManager#delete(java.lang.Long)
	 */
	@Override
	public void delete(Long id) {
		newsMapper.delete(id);
	}

	/* (non-Javadoc)
	 * @see com.yaotrue.manager.NewsManager#getByPrimaryKey(java.lang.Long)
	 */
	@Override
	@Transactional(readOnly = true)
	public News getByPrimaryKey(Long id) {
		return newsMapper.getByPrimaryKey(id);
	}

	/* (non-Javadoc)
	 * @see com.yaotrue.manager.NewsManager#findNewsByTypeAndCount(java.lang.Byte, java.lang.Integer)
	 */
	@Override
	@Transactional(readOnly = true)
	public List<News> findNewsByTypeAndCount(Byte type, Integer count) {
		return newsMapper.findNewsByTypeAndCount(type, count);
	}

	/* (non-Javadoc)
	 * @see com.yaotrue.manager.NewsManager#findByPageAndType(java.lang.Byte, java.lang.Integer, java.lang.Integer)
	 */
	@Override
	@Transactional(readOnly = true)
	public List<News> findByPageAndType(Byte type, Integer start, Integer pageSize) {
		return newsMapper.findByPageAndType(type, start, pageSize);
	}

	/* (non-Javadoc)
	 * @see com.yaotrue.manager.NewsManager#save(com.yaotrue.web.command.NewCommand)
	 */
	@Override
	@Transactional
	public void save(NewCommand newCommand) {
		News news = new News();
		if(null != newCommand.getId()){
			news = newsMapper.getByPrimaryKey(newCommand.getId());
			if(null == news){
				return;
			}
			
			newsLangMapper.deleteByNewId(news.getId());
		}else{
			news.setType(newCommand.getType());
			save(news);
		}
		List<NewsLang> newsLangs = new ArrayList<>();
		NewsLang newsLang = new NewsLang();
		newsLang.setAuthor(newCommand.getAuthor_zh());
		newsLang.setContent(newCommand.getContent_zh());
		newsLang.setNewId(news.getId());
		newsLang.setTitle(newCommand.getTitle_zh());
		newsLang.setLang(LangUtil.ZH_CN);
		newsLangs.add(newsLang);
		
		NewsLang newsLang2 = new NewsLang();
		newsLang2.setAuthor(newCommand.getAuthor_en());
		newsLang2.setContent(newCommand.getContent_en());
		newsLang2.setNewId(news.getId());
		newsLang2.setTitle(newCommand.getTitle_en());
		newsLang2.setLang(LangUtil.EN_US);
		newsLangs.add(newsLang2);			
		newsLangMapper.batchSave(newsLangs);
	}
	
	/* (non-Javadoc)
	 * @see com.yaotrue.manager.NewsManager#findByLang(java.lang.String)
	 */
	@Override
	public List<NewsViewCommand> findByLang(String lang) {
		return newsMapper.findByLang(lang);
	}
}
