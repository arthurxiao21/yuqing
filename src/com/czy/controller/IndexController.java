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

		List<AllNews> list = newsService.findNewsAllSort();// ��������������
		List<AllNews> newsNumList = newsService.findNewsNumSort();// ��������������

		List<AllNews> highList = new ArrayList<>();// ������ȶ����ż�
		List<AllNews> upHighList = new ArrayList<>();// ��������
		List<AllNews> downHighList = new ArrayList<>();// ��������

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
				System.out.println("����������������������������ʼ�жϡ�������������������������������������������������������");

				if (allNews.getDate().toString().equals(highList.get(j).getDate().toString())
						&& allNews.getNum() > highList.get(j).getNum()) {
					System.out.println("�������������������������������������ֵ��������������������������������������������������������");
					highList.remove(j);
					highList.add(allNews);
					break;
				} else {

					System.out.println("��������������������������������������������������������������������������������������");
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
				System.out.println("�������������������������������������ڡ�������������������������������������������������������");

			}

			for (int j = 0; j < highList.size(); j++) {
				System.out.println("����������������������������ʼ�ж������ظ��ġ�������������������������������������������������������");

				if (allNews.getDate().equals(highList.get(j).getDate())
						&& allNews.getScore() > highList.get(j).getScore()) {
					System.out.println("�������������������������������������ֵ��������������������������ɾ�ˡ�����" + highList.get(j).getScore() + "��Ϊ"
							+ allNews.getScore());
					highList.remove(j);
					highList.add(allNews);
					break;
				} else {

					System.out.println("��������������������������������������������������������������������������������������" + allNews.getScore());
				}
			}
		}
		System.out.println("����������gggggggggggg������������������������" + highList.get(0).getScore());
	}

	private void pickDownScore(List<AllNews> list, List<AllNews> lowList) {
		AllNews allNews;
		lowList.add(list.get(0));

		for (int i = 1; i < list.size(); i++) {
			allNews = list.get(i);
			if (allNews.getDate().equals(lowList.get(lowList.size() - 1).getDate()) == false) {
				lowList.add(allNews);
				System.out.println("�������������������������������������ڡ�������������������������������������������������������");

			}

			for (int j = 0; j < lowList.size(); j++) {
				System.out.println("����������������������������ʼ�ж������ظ��ġ�������������������������������������������������������");

				if (allNews.getDate().equals(lowList.get(j).getDate())
						&& allNews.getScore() < lowList.get(j).getScore()) {
					System.out.println("��������������������������������������ֵ��������������������������ɾ�ˡ�����" + lowList.get(j).getScore() + "��Ϊ"
							+ allNews.getScore());
					lowList.remove(j);
					lowList.add(allNews);
					break;
				} else {

					System.out.println("��������������������������������������������������������������������������������������" + allNews.getScore());
				}
			}
		}
		System.out.println("����������gggggggggggg������������������������" + lowList.get(0).getScore());
	}
}
