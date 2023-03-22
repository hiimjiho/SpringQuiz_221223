package com.quiz.lesson03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson03.bo.RealEstate2BO;
import com.quiz.lesson03.bo.RealEstateBO;
import com.quiz.lesson03.model.RealEstate;

@RequestMapping("/lesson03/quiz01")
@RestController
public class Lesson03Quiz01RestController {
	@Autowired
	private RealEstateBO realEstateBO;
	private RealEstate2BO realEstate2BO;
	
//	 http://localhost:8080/lesson03/quiz01/1?id=20
	@RequestMapping("/1")
	public RealEstate quiz01_1(
			@RequestParam("id")int id){
		return realEstateBO.getRealEstateById(id);
	}
	
	// http://localhost:8080/lesson03/quiz01/2?rentprice=90
	@RequestMapping("/2")
	public RealEstate quiz01_2(
			@RequestParam("rentPrice") Integer rentPrice) {
		return realEstate2BO.getRealEstateByRentPrice(rentPrice);
	}
	
}
