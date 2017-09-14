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
package com.yaotrue.web.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.alibaba.fastjson.JSON;
import com.yaotrue.manager.NewsImageManager;
import com.yaotrue.manager.NewsManager;
import com.yaotrue.model.News;
import com.yaotrue.model.NewsImage;
import com.yaotrue.util.LangUtil;
import com.yaotrue.web.command.NewCommand;
import com.yaotrue.web.command.NewsViewCommand;

/**
 * @author <a href="mailto:yaotrue@163.com">yaotrue</a> 2017年8月16日 下午1:45:32
 */
@Controller
public class NewsManagerController extends BaseController {
	
	private static final Logger LOG = LoggerFactory.getLogger(NewsManagerController.class);
	
	@Value("${image.upload.rootdirectory}")
	private String imageRootDirectory;

	@Autowired
	private NewsManager newsManager;
	
	@Autowired
	private NewsImageManager	newsImageManager;

	@RequestMapping(value = "/admin")
	public String admin(HttpServletRequest request, Model model) {
		List<NewsViewCommand> news = newsManager.findByLang(LangUtil.ZH_CN);
		model.addAttribute("news", news);
		return "/admin/index";
	}

	@RequestMapping(value = "/admin/addNew")
	public String addNew(HttpServletRequest request, Model model) {
		return "/admin/edit-new";
	}

	@RequestMapping(value = "/admin/editNew")
	public String editNew(@RequestParam("newId") Long newId, HttpServletRequest request, Model model) {
		model.addAttribute("new", newsManager.getByNewsId(newId));
		return "/admin/edit-new";
	}
	
	@RequestMapping(value = "/admin/deleteNews")
	public void deleteNews(@RequestParam("newId") Long newId, HttpServletRequest request,HttpServletResponse response, Model model) {
		newsManager.delete(newId);
		Map<String, Object> result = new HashMap<>();
		result.put("flag", true);
		responceJson(result, response);
	}
	
	@RequestMapping(value = "/admin/newsUp")
	public void newsUp(@RequestParam("newId") Long newId, HttpServletRequest request, HttpServletResponse response,Model model) {
		News news = newsManager.getByPrimaryKey(newId);
		news.setStatus(News.STATUS_ENABLE);
		newsManager.update(news);
		Map<String, Object> result = new HashMap<>();
		result.put("flag", true);
		responceJson(result, response);
	}
	
	@RequestMapping(value = "/admin/newsDown")
	public void newsDown(@RequestParam("newId") Long newId, HttpServletRequest request, HttpServletResponse response,Model model) {
		News news = newsManager.getByPrimaryKey(newId);
		news.setStatus(News.STATUS_DISABLE);
		newsManager.update(news);
		Map<String, Object> result = new HashMap<>();
		result.put("flag", true);
		responceJson(result, response);
	}

	@RequestMapping(value = "/admin/saveNew", method = RequestMethod.POST)
	public String saveNew(@ModelAttribute NewCommand newCommand) {
		newsManager.save(newCommand);
		return "redirect:/admin";
	}
	
	@RequestMapping(value = "/admin/editImage")
	public String editImage(@RequestParam("newId") Long newId, HttpServletRequest request, Model model) {
		model.addAttribute("newsImages", newsImageManager.findImageByNewId(newId));
		model.addAttribute("newId", newId);
		return "/admin/edit-image";
	}
	
	@RequestMapping(value = "/admin/imageUpload")
	public void imageUpload(@RequestParam("file") CommonsMultipartFile file,@RequestParam("newId") Long newId, HttpServletRequest request,HttpServletResponse response, Model model) {
		File rootDirectory = new File(imageRootDirectory);
		if(!rootDirectory.exists()){
			rootDirectory.mkdirs();
		}
		Date now = new Date();
		SimpleDateFormat yearFormat = new SimpleDateFormat("yyyy");
		SimpleDateFormat monthFormat = new SimpleDateFormat("MM");
		SimpleDateFormat dayFormat = new SimpleDateFormat("dd");
		StringBuilder sb = new StringBuilder();
//		sb.append(rootDirectory.getAbsolutePath()).append(File.separator);
		sb.append(yearFormat.format(now)).append(File.separator).append(monthFormat.format(now)).append(File.separator).append(dayFormat.format(now));
		File imageDirectory = new File(rootDirectory.getAbsolutePath() + File.separator + sb.toString());
		if(!imageDirectory.exists()){
			imageDirectory.mkdirs();
		}
		
		Map<String, Object> result = new HashMap<>();
		StringBuilder fileName = new StringBuilder();
//		fileName.append(imageDirectory.getAbsolutePath()).append(File.separator);
		fileName.append(UUID.randomUUID()).append(file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".")));
		File imageFile = new File(imageDirectory.getAbsolutePath() + File.separator + fileName.toString());
		try {
			file.getFileItem().write(imageFile);
		} catch (Exception e) {
			LOG.error("write upload image file error!",e);
			result.put("flag", false);
			responceJson(result, response);
			return;
		}
		
		NewsImage newsImage = new NewsImage();
		newsImage.setNewsId(newId);
		newsImage.setPicUri(sb.toString()+File.separator+fileName.toString());
		newsImage.setSortNo(newsImageManager.getMaxSortNo(newId) + 1);
		newsImageManager.save(newsImage);
		
		result.put("flag", true);
		responceJson(result, response);
	}
	
	@RequestMapping(value = "/admin/deleteImage", method = RequestMethod.POST)
	public void deleteImage(@RequestParam("imageId")Long imageId,HttpServletResponse response) {
		newsImageManager.deleteImage(imageId);
		Map<String, Object> result = new HashMap<>();
		result.put("flag", true);
		responceJson(result, response);
	}
	
	@RequestMapping(value = "/admin/moveImage", method = RequestMethod.POST)
	public void moveImage(@RequestParam("imageId")Long imageId,@RequestParam("type")Integer type,HttpServletResponse response) {
		newsImageManager.moveImage(imageId,type);
		Map<String, Object> result = new HashMap<>();
		result.put("flag", true);
		responceJson(result, response);
	}
	
	private void responceJson(Map<String, Object> result,HttpServletResponse response){
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		try {
			PrintWriter writer = response.getWriter();
			writer.println(JSON.toJSONString(result));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
