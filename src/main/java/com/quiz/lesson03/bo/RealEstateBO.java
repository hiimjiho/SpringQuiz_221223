package com.quiz.lesson03.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson03.dao.RealEstateMapper;
import com.quiz.lesson03.model.RealEstate;

@Service
public class RealEstateBO {
	@Autowired
	private RealEstateMapper realEstateMapper;
	
	// input: id output: RealEstate
	public RealEstate getRealEstateById(int id) {
		
	}
}
