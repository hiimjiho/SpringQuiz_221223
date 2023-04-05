package com.quiz.lesson06;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quiz.lesson06.bo.SiteBO;
import com.quiz.lesson06.model.Site;

@RequestMapping("/lesson06/quiz01")
@Controller
public class Lesson06Controller {
	
	@Autowired
	private SiteBO siteBO;
	
	// http://localhost/lesson06/quiz01/add_site_view
	@GetMapping("/add_site_view")
	public String addSiteView() {
		return "lesson06/addSite";
	}
	
	@PostMapping("/add_site")
	@ResponseBody
	public Map<String, Object> addSite(
			@RequestParam("name") String name,
			@RequestParam("url") String url) {
		//  "{"code":1, "result":"성공"}"
		//  "{"code":500, "errorMessage":"추가하는데 실패했습니다."}"
		
		// insert
		
		Map<String, Object> result = new HashMap<>();
		int rowCount = siteBO.addSite(name, url);
		if(rowCount > 0) {
			result.put("code", 1);
			result.put("result", "성공");
		} else {
			result.put("code", 500);
			result.put("errorMessage", "데이터를 추가하는데 실패했습니다.");
		}
	
		return result;	// JSON String 
	}
	
	@RequestMapping("/site_view")
	public String siteView(Model model) {
		List<Site> favoriteSite = siteBO.getSite();
		model.addAttribute("favorite", favoriteSite);
		return "lesson06/afterSite";
	}
	
	@ResponseBody
	@GetMapping("/is_duplication")
	public Map<String, Boolean> isDuplication(
			@RequestParam("url") String url){
		Map<String, Boolean> result = new HashMap<>();
		result.put("isDuplication", siteBO.exsitSiteByUrl(url));
		return result;
	}
	
	// 중복 url 체크 - ajax통신
	@ResponseBody
	@PostMapping("is_duplication_url")
	public Map<String, Boolean> isDuplicationUrl(
			@RequestParam("url") String url){
		Map<String, Boolean> result = new HashMap<>();
		// select
		Site site = siteBO.getSiteByUrl(url);
		if(site != null) {
			result.put("isDuplication", true);
		} else {
			result.put("isDuplication", false);
		}
		return result;
	}
	
	// id로 삭제를 하는 API
	// AJAX로 요청
	@ResponseBody
	@PostMapping("/delete_site")
	public Map<String, Object> deleteSite(
			@RequestParam("id") int id){
		
		// delete
		int rowCount = siteBO.deleteSiteById(id);
		
		Map<String, Object> result = new HashMap<>();
		
		if (rowCount > 0) {
			result.put("code", 1);
			result.put("result", "성공");
		} else {
			result.put("code", 500); // 500: 에러
			result.put("errorMessage", "삭제하는데 실패했습니다");
		}
		
		return result;
	}
}
