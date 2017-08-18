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

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.fastjson.JSON;
import com.yaotrue.BaseTest;
import com.yaotrue.model.News;

/**
 * @author <a href="mailto:yaotrue@163.com">yaotrue</a>
 * 2017年8月15日 下午10:14:20
 */
public class NewManagerTest extends BaseTest {

	private static final Logger LOG = LoggerFactory.getLogger(NewManagerTest.class);
	
	@Autowired
	private NewsManager	newsManager;
	
	@Test
	public void testNews(){
		News news = new News();
		news.setBigImgUri("爱上看到");
		news.setSmallImgUri("气温已经感觉");
		news.setStatus(News.STATUS_NEW);
		news.setType(News.TYPE_NEWS);
		
		newsManager.save(news);
	}
	
	@Test
	public void testUpdate(){
		News news = newsManager.getByPrimaryKey(1L);
		LOG.info("result:{}",JSON.toJSONString(news));
		
		news.setStatus(News.STATUS_DELETE);
		newsManager.update(news);
	}
	
	@Test
	public void testDelete(){
		newsManager.delete(3L);
	}
	
	@Test
	public void testFindNewsByTypeAndCount(){
		LOG.info("result1:{}",newsManager.findNewsByTypeAndCount(News.TYPE_NEWS, 1));
		LOG.info("result2:{}",newsManager.findNewsByTypeAndCount(News.TYPE_NEWS, 2));
	}
	
	@Test
	public void testFindByPageAndType(){
		LOG.info("result1:{}",newsManager.findByPageAndType(News.TYPE_NEWS, 0,1));
		LOG.info("result2:{}",newsManager.findByPageAndType(News.TYPE_NEWS, 0,2));
	}
}
