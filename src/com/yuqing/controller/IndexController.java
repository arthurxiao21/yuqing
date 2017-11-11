package com.yuqing.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yuqing.service.NewsService;

@Controller
public class IndexController {

	@Autowired
	NewsService newsService;
	public NewsService getNewsService() {
		return newsService;
	}
	public void setNewsService(NewsService newsService) {
		this.newsService = newsService;
	}
	@RequestMapping("/index")
	public String index(Map<String,Object> map){
		map.put("newsList", newsService.findNews());
		return "index";
	}
}
