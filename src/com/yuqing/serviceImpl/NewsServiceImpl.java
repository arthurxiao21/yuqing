package com.yuqing.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.yuqing.mapper.NewsMapper;
import com.yuqing.pojo.News;
import com.yuqing.service.NewsService;

public class NewsServiceImpl implements NewsService{
	
	@Autowired
	NewsMapper newsMapper;
	public NewsMapper getNewsMapper() {
		return newsMapper;
	}
	public void setNewsMapper(NewsMapper newsMapper) {
		this.newsMapper = newsMapper;
	}
	@Override
	public List<News> findNews() {
		return newsMapper.findNews();
	}
	
}
