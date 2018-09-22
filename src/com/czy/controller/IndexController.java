package com.czy.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import com.czy.pojo.AllNews;
import com.czy.service.NewsService;

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
	public String index(Map<String, Object> map) {

		List<AllNews> list = newsService.findNewsAllSort();// 梓晩豚恷仟電會
		List<AllNews> newsNumList = newsService.findNewsNumSort();// 梓得胎方楚電會

		List<AllNews> highList = new ArrayList<>();// 晩恷互犯業仟療鹿
		List<AllNews> upHighList = new ArrayList<>();// 屎中仟療
		List<AllNews> downHighList = new ArrayList<>();// 減中仟療

		pickNum(list, highList);
		pickUpScore(list, upHighList);
		pickDownScore(list, downHighList);

		map.put("newsList", newsService.findNews());
		map.put("newsNumList", newsNumList);
		map.put("highList", highList);
		map.put("upHighList", upHighList);
		map.put("downHighList", downHighList);

		return "index";
	}

	/**
	 * @param list
	 * @param highList
	 */
	private void pickNum(List<AllNews> list, List<AllNews> highList) {
		AllNews allNews;
		if (list != null) {
			highList.add(list.get(0));
		}

		for (int i = 1; i < list.size(); i++) {
			allNews = list.get(i);
			if (allNews.getDate().toString().equals(highList.get(highList.size() - 1).getDate().toString()) == false) {
				highList.add(allNews);
			}
			for (int j = 0; j < highList.size(); j++) {
				System.out.println("！！！！！！！！！！！！！蝕兵登僅！！！！！！！！！！！！！！！！！！！！！！！！！！！！");

				if (allNews.getDate().toString().equals(highList.get(j).getDate().toString())
						&& allNews.getNum() > highList.get(j).getNum()) {
					System.out.println("！！！！！！！！！！！！！厚仟阻晩恷寄峙！！！！！！！！！！！！！！！！！！！！！！！！！！！！");
					highList.remove(j);
					highList.add(allNews);
					break;
				} else {

					System.out.println("！！！！！！！！！！！！！普虹！！！！！！！！！！！！！！！！！！！！！！！！！！！！");
				}
			}
		}
	}

	private void pickUpScore(List<AllNews> list, List<AllNews> highList) {
		AllNews allNews;
		highList.add(list.get(0));

		for (int i = 1; i < list.size(); i++) {
			allNews = list.get(i);
			if (allNews.getDate().equals(highList.get(highList.size() - 1).getDate()) == false) {
				highList.add(allNews);
				System.out.println("！！！！！！！！！！！！！峨秘阻仟晩豚！！！！！！！！！！！！！！！！！！！！！！！！！！！！");

			}

			for (int j = 0; j < highList.size(); j++) {
				System.out.println("！！！！！！！！！！！！！蝕兵登僅晩豚嶷鹸議！！！！！！！！！！！！！！！！！！！！！！！！！！！！");

				if (allNews.getDate().equals(highList.get(j).getDate())
						&& allNews.getScore() > highList.get(j).getScore()) {
					System.out.println("！！！！！！！！！！！！！厚仟阻晩恷寄峙！！！！！！！！！！！！！評阻！！！" + highList.get(j).getScore() + "延葎"
							+ allNews.getScore());
					highList.remove(j);
					highList.add(allNews);
					break;
				} else {

					System.out.println("！！！！！！！！！！！！！普虹！！！！！！！！！！！！！！！！！！！！！！！！！！！！" + allNews.getScore());
				}
			}
		}
		System.out.println("！！！！！gggggggggggg！！！！！！！！！！！！" + highList.get(0).getScore());
	}

	private void pickDownScore(List<AllNews> list, List<AllNews> lowList) {
		AllNews allNews;
		lowList.add(list.get(0));

		for (int i = 1; i < list.size(); i++) {
			allNews = list.get(i);
			if (allNews.getDate().equals(lowList.get(lowList.size() - 1).getDate()) == false) {
				lowList.add(allNews);
				System.out.println("！！！！！！！！！！！！！峨秘阻仟晩豚！！！！！！！！！！！！！！！！！！！！！！！！！！！！");

			}

			for (int j = 0; j < lowList.size(); j++) {
				System.out.println("！！！！！！！！！！！！！蝕兵登僅晩豚嶷鹸議！！！！！！！！！！！！！！！！！！！！！！！！！！！！");

				if (allNews.getDate().equals(lowList.get(j).getDate())
						&& allNews.getScore() < lowList.get(j).getScore()) {
					System.out.println("！！！！！！！！！！！！！厚仟阻晩恷��峙！！！！！！！！！！！！！評阻！！！" + lowList.get(j).getScore() + "延葎"
							+ allNews.getScore());
					lowList.remove(j);
					lowList.add(allNews);
					break;
				} else {

					System.out.println("！！！！！！！！！！！！！普虹！！！！！！！！！！！！！！！！！！！！！！！！！！！！" + allNews.getScore());
				}
			}
		}
		System.out.println("！！！！！gggggggggggg！！！！！！！！！！！！" + lowList.get(0).getScore());
	}
}
