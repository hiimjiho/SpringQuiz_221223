package com.quiz.lesson03.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson03.model.RealEstate;

@Repository
public interface RealEstateMapper {
	public RealEstate selectRealEstate(@Param("id") int id);
	
	public List<RealEstate> selectRealEstateListByRentPrice(int rentPrice);
	
	// MyBatis는 파라미터를 단 한개만 보낼 수 있다.
	// 파라미터가 2개 이상일 때는 하나의 맵으로 만들어서 보내야한다. 
	// @Param을 사용하면 하나의 맵으로 만들어준다.
	public List<RealEstate> selectRealEstateListByAreaPrice(
			@Param("area") int area,
			@Param("price") int price);
	
	public int insertEstate(RealEstate realEstate);
	
	public int insertEstateAsFiled(
			@Param("id") int id,
			@Param("address") String address,
			@Param("area") int area,
			@Param("type") String type,
			@Param("price") int price,
			@Param("rentPrice") int rentPrice);
}
