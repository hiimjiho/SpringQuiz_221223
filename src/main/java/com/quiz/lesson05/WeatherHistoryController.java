package com.quiz.lesson05;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson05.bo.WeatherHistoryBO;
import com.quiz.lesson05.model.WeatherHistory;
@RequestMapping("/lesson05/quiz05")
@Controller
public class WeatherHistoryController {
	
	@Autowired WeatherHistoryBO weatherHistoryBO;
	
	@GetMapping("/weather_history")
	public String quiz05(
			Model model) {
		List<WeatherHistory> weatherHistoryList = weatherHistoryBO.getWeatherHistory();
		model.addAttribute("weathers", weatherHistoryList);
		return "lesson05/weathers";
	}
	
	@PostMapping("/add_weather")
	public String addWeahterView(
			@RequestParam("date") @DateTimeFormat(pattern="yyyy-MM-dd") Date date,
			@RequestParam("weather") String weather,
			@RequestParam("temperatures") double temperatures,
			@RequestParam("precipitation") double precipitation,
			@RequestParam("microDust") String microDust,
			@RequestParam("windSpeed") double windSpeed) {
		
		// insert
		weatherHistoryBO.addWeatherHistory(date, weather, temperatures, precipitation, microDust, windSpeed);
		// select X
		
		// model X
		
		// redirect : 목록 페이지로
		return "redirect:/lesson05/weather_history";
	}
	
}
