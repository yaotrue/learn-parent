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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yaotrue.mapper.NewsImageMapper;
import com.yaotrue.model.NewsImage;

/**
 * @author <a href="mailto:yaotrue@163.com">yaotrue</a>
 * 2017年9月14日 上午12:15:05
 */
@Service
@Transactional
public class NewsImageManagerImpl implements NewsImageManager {
	
	@Autowired
	private NewsImageMapper	newsImageMapper;
	
	private static final Integer MOVE_TYPE_UP = 1;
	
	private static final Integer MOVE_TYPE_DOWN = 2;

	/* (non-Javadoc)
	 * @see com.yaotrue.manager.NewsImageManager#save(com.yaotrue.model.NewsImage)
	 */
	@Override
	public NewsImage save(NewsImage newsImage) {
		newsImageMapper.save(newsImage);
		return newsImage;
	}
	
	/* (non-Javadoc)
	 * @see com.yaotrue.manager.NewsImageManager#findImageByNewId(java.lang.Long)
	 */
	@Override
	@Transactional(readOnly = true)
	public List<NewsImage> findImageByNewId(Long newId) {
		return newsImageMapper.findByNewId(newId);
	}
	
	/* (non-Javadoc)
	 * @see com.yaotrue.manager.NewsImageManager#deleteImage(java.lang.Long)
	 */
	@Override
	public void deleteImage(Long imageId) {
		newsImageMapper.delete(imageId);
	}
	
	/* (non-Javadoc)
	 * @see com.yaotrue.manager.NewsImageManager#getMaxSortNo(java.lang.Long)
	 */
	@Override
	@Transactional(readOnly = true)
	public Integer getMaxSortNo(Long newsId) {
		Integer maxSortNo = newsImageMapper.getMaxSortNo(newsId);
		if(null == maxSortNo){
			maxSortNo = 0;
		}
		return maxSortNo;
	}
	
	/* (non-Javadoc)
	 * @see com.yaotrue.manager.NewsImageManager#moveImage(java.lang.Long, java.lang.Integer)
	 */
	@Override
	public void moveImage(Long imageId,Integer type) {
		NewsImage newsImage = newsImageMapper.getByPrimaryKey(imageId);
		if(null == newsImage){
			return;
		}
		
		NewsImage otherImage = null;
		if(MOVE_TYPE_UP.equals(type)){
			otherImage = newsImageMapper.getUpImage(newsImage.getNewsId(), newsImage.getSortNo());
		}else if (MOVE_TYPE_DOWN.equals(type)) {
			otherImage = newsImageMapper.getDownImage(newsImage.getNewsId(), newsImage.getSortNo());
		}
		
		if(otherImage == null){
			return;
		}
		
		Integer tmpSort = newsImage.getSortNo();
		newsImage.setSortNo(otherImage.getSortNo());
		otherImage.setSortNo(tmpSort);
		
		newsImageMapper.update(newsImage);
		newsImageMapper.update(otherImage);
	}

}
