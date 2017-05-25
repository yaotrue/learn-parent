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
package com.yaotrue.learn.mybatis.mapper.product;

import java.util.List;

import com.yaotrue.learn.model.product.Category;
import com.yaotrue.learn.mybatis.mapper.BaseMapper;

/**
 * @author <a href="mailto:yaotrue@163.com">yaotrue</a>
 * 2017年5月21日 下午10:00:43
 */
public interface CategoryMapper extends BaseMapper {

	/**
	 * 查询所有有效的分类
	 * @author <a href="mailto:yaotrue@163.com">yaotrue</a>
	 * 2017年5月21日 下午10:03:59
	 * @return
	 */
	List<Category> findAll();
}
