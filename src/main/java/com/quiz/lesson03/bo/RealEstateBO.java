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
		return realEstateMapper.selectRealEstate(id);
	}

	// input: rent_price output: List<RealEstate>
	public List<RealEstate> getRealEstateListByRentPrice(int rentPrice) {
		return realEstateMapper.selectRealEstateListByRentPrice(rentPrice);
	}
	
	// input : area, price 		output: List<RealEstate>
	public List<RealEstate> getRealEstateListByAreaPrice(int area, int price){
		return realEstateMapper.selectRealEstateListByAreaPrice(area, price);
	}
	
	
	// input: RealEstate	output: 성공한 행의 개수
	public int addEstate(RealEstate realEstate) {
		return realEstateMapper.insertEstate(realEstate);
	}
	
 //	 address : 썅떼빌리버 오피스텔 814호
//	area : 45
//	type : 월세
//	price : 100000
//	rentPrice : 120
	public int addEstateAsFiled(int realtorId, String address, int area, String type, int price, int rentPrice) {
		return realEstateMapper.insertEstateAsFiled(realtorId, address, area, type, price, rentPrice);
	}
}
