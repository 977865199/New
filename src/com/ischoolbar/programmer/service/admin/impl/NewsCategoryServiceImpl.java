package com.ischoolbar.programmer.service.admin.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.admin.NewsCategoryDao;
import com.ischoolbar.programmer.entity.admin.NewsCategory;
import com.ischoolbar.programmer.service.admin.NewsCategoryService;
@Service
public class NewsCategoryServiceImpl implements NewsCategoryService {

	@Autowired
	private NewsCategoryDao newsCategoryDao;
	
	@Override
	public int add(NewsCategory newsCategory) {

		return newsCategoryDao.add(newsCategory);
	}

	@Override
	public int edit(NewsCategory newsCategory) {

		return newsCategoryDao.edit(newsCategory);
	}

	@Override
	public int delete(Long id) {

		return newsCategoryDao.delete(id);
	}

	@Override
	public List<NewsCategory> findList(Map<String, Object> queryMap) {

		return newsCategoryDao.findList(queryMap);
	}

	@Override
	public int getTotal(Map<String, Object> queryMap) {

		return newsCategoryDao.getTotal(queryMap);
	}

	@Override
	public List<NewsCategory> findAll() {

		return newsCategoryDao.findAll();
	}

	@Override
	public NewsCategory find(Long id) {

		return newsCategoryDao.find(id);
	}

}
