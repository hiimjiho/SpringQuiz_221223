package com.quiz.lesson03.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson03.dao.RealEstateMapper;
import com.quiz.lesson03.model.RealEstate;

@Service
public class RealEstate2BO {
	@Autowired
	private RealEstateMapper realEstateMapper;
	
	// input: id output: RealEstate
	public RealEstate getRealEstateByRentPrice(Integer rentPrice) {
		return realEstateMapper.selectRealEstateByRentPrice(rentPrice);
	}
}
