package com.quiz.lesson02;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson02.bo.NewReviewBO;
import com.quiz.lesson02.bo.StoreBO;
import com.quiz.lesson02.model.NewReview;
import com.quiz.lesson02.model.Store;

@RequestMapping("/lesson02/quiz")
@Controller
public class Lesson02QuizController {
	@Autowired
	StoreBO storeBO;
	NewReviewBO newReviewBO;
	
	// http://localhost/lesson02/quiz/store_view
	@GetMapping("/store_view")
	public String storeView(Model model) {
		List<Store> storeList  = storeBO.getStoreList();
		model.addAttribute("stores", storeList);
		
		return "lesson05/store";
	}
	
	@GetMapping("/store_review")
	public String storeReview(
			@RequestParam("storeId") int storeId,
			@RequestParam("name") String name,
			Model model) {
		List<NewReview> storeReview = newReviewBO.getNewReview();
		List<Store> storeList  = storeBO.getStoreList();
		model.addAttribute("review", storeReview);
		model.addAttribute("stores", storeList);
		return "lesson05/storeReview";
	}
}
