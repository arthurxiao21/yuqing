package com.czy.service;

import java.util.List;

import com.czy.pojo.AllNews;
import com.czy.pojo.News;

public interface NewsService {
	List<News> findNews();
	List<AllNews> findNewsAllSort();
	List<AllNews> findNewsNumSort();
}
