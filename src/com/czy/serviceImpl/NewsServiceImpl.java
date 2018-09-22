package com.czy.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.czy.mapper.NewsMapper;
import com.czy.pojo.AllNews;
import com.czy.pojo.News;
import com.czy.service.NewsService;

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
	@Override
	public List<AllNews> findNewsAllSort() {
		return newsMapper.findNewsAllSort();
	}
	@Override
	public List<AllNews> findNewsNumSort() {
		return newsMapper.findNewsNumSort();
	}
}
