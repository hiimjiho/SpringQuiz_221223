package com.quiz.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson04.bo.SellerBO;
import com.quiz.lesson04.model.Seller;

@RequestMapping("/lesson04/quiz01")
@Controller
public class Lesson04Quiz01Controller {
	@Autowired
	private SellerBO sellerBO;
	
	// http://localhost/lesson04/quiz01/add_Seller_view
	@GetMapping(path="/add_Seller_view")
	public String addSellerView() {
		return "lesson04/addSeller";
	}
	
	@PostMapping("/add_seller")
	public String addSeller(
			@RequestParam("nickname") String nickname,
			@RequestParam(value="profileImageUrl", required=false) String profileImageUrl,
			@RequestParam(value="temperature", required=false) Double temperature) {
		sellerBO.addSeller(nickname, profileImageUrl, temperature);
		
		return "lesson04/afterAddSeller";
	}
	// http://localhost/lesson04/quiz01/seller_info
	@GetMapping("/seller_info")
	public String getLatestUserView(Model model) {
		Seller seller = sellerBO.getLatestSeller();
		model.addAttribute("seller", seller);
		return "/lesson04/getLatestUser";
	}
	
	// http://localhost/lesson04/quiz01/seller_info?id=1
	@GetMapping("/seller_info")
	public String getUserView(
			@RequestParam("id") int id,
			Model model) {
		Seller seller = sellerBO.getLatestSeller();
		model.addAttribute("seller", seller);
		return "/lesson04/getLatesUser";
	}
}
