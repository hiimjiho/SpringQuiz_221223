package com.quiz.lesson06.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.quiz.lesson06.model.Site;

@Repository
public interface SiteMapper {
	
	public void insertSite(String name, String url);
	
	public List<Site> selectSite();
}
