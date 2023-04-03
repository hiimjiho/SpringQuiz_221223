package com.quiz.lesson06.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson06.dao.SiteMapper;
import com.quiz.lesson06.model.Site;

@Service
public class SiteBO {
	@Autowired
	private SiteMapper siteMapper;
	
	public void addSite(String name, String url) {
		siteMapper.insertSite(name, url);
	}
	
	public List<Site> getSite(){
		return siteMapper.selectSite();
	}
}
