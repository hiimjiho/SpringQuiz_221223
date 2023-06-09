package com.quiz.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quiz.lesson04.bo.RealtorBO;
import com.quiz.lesson04.model.Realtor;
@RequestMapping("/lesson04/quiz02")
@Controller
public class Lesson04Quiz02Controller {
	
	@Autowired
	private RealtorBO realtorBO;
	
	//http://localhost/lesson04/quiz02/add_realtor_view
	@GetMapping("add_realtor_view")
	public String quiz02_1() {
		return "lesson04/addRealtor";
	}
	// http://localhost/lesson04/quiz02/add_realtor
	@PostMapping("/add_realtor")
	public String quiz02_2(
			@ModelAttribute Realtor realtor,
			Model model) {
		
		// DB insert
		realtorBO.addRealtor(realtor);
		// DB select
		Realtor latestRealtor = realtorBO.getRealtorById(realtor.getId());
		// 모델에 데이터 담기
		model.addAttribute("result", latestRealtor);
		// 리턴(뷰로 이동)
		return "lesson04/afterAddRealtor";
	}
}
