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
package com.yaotrue.learn.mybatis.mapper.product.impl;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.yaotrue.learn.model.product.Category;
import com.yaotrue.learn.mybatis.mapper.product.CategoryMapper;

/**
 * @author <a href="mailto:yaotrue@163.com">yaotrue</a>
 * 2017年5月21日 下午10:04:50
 */
public class CategoryMapperImpl implements CategoryMapper {

	/* (non-Javadoc)
	 * @see com.yaotrue.learn.mybatis.mapper.product.CategoryMapper#findAll()
	 */
	@Override
	public List<Category> findAll() {
		String resouce = "mybatis-first.xml";
		Reader reader = null;
		SqlSessionFactory sqlSessionFactory = null;
		SqlSession sqlSession = null;
		List<Category> categories = new ArrayList<>();
		
		try {
			reader = Resources.getResourceAsReader(resouce);
			SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
			sqlSessionFactory = builder.build(reader);
			sqlSession = sqlSessionFactory.openSession();
			CategoryMapper categoryMapper = sqlSession.getMapper(CategoryMapper.class);
			categories = categoryMapper.findAll();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return categories;
	}

}
