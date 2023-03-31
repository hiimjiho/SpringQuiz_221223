package com.quiz.lesson05.bo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson05.dao.WeatherHistoryMapper;
import com.quiz.lesson05.model.WeatherHistory;

@Service
public class WeatherHistoryBO {
	@Autowired WeatherHistoryMapper weatherHistoryMapper;
	
	public List<WeatherHistory> getWeatherHistory() {
		return weatherHistoryMapper.selectWeatherHistory();
	}
	
//	@RequestParam("date") @DateTimeFormat(pattern="yyyy-MM-dd") Date date,
//	@RequestParam("weather") String weather,
//	@RequestParam("temperatures") double temperatures,
//	@RequestParam("precipitation") double precipitation,
//	@RequestParam("microDust") String microDust,
//	@RequestParam("windSpeed") double windSpeed
	public void addWeatherHistory(Date date, String weather, double temperatures,
			double precipitation, String microDust, double windSpeed) {
		weatherHistoryMapper.insertWeatherHistory(date, weather, temperatures, precipitation, microDust, windSpeed);
	}
}
