package com.quiz.lesson05;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@GetMapping("/add_weather_view")
	public String addWeahterView() {
		return "lesson05/addWeather";
	}
	
}
