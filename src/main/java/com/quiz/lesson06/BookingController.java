package com.quiz.lesson06;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/lesson06/quiz03")
@Controller
public class BookingController {
	// 	http://localhost/lesson06/quiz03/add_pension
	@GetMapping("/add_pension")
	public String addPension() {
		return "lesson06/pension";
	}
	
	@RequestMapping("")
}
