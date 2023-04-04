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
	
	//input: name, url		output: 성공된 행의 개수
	public int addSite(String name, String url) {
		return siteMapper.insertSite(name, url);
	}
	
	public List<Site> getSite(){
		return siteMapper.selectSite();
	}
	
	public boolean exsitSiteByUrl(String url) {
		return siteMapper.exsitSiteByUrl(url);
	}
}
