package com.czy.mapper;

import java.util.List;

import com.czy.pojo.AllNews;
import com.czy.pojo.News;

public interface NewsMapper {

	public List<News> findNews();

	public List<AllNews> findNewsAllSort();

	public List<AllNews> findNewsNumSort();
}
