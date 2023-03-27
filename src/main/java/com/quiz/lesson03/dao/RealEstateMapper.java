package com.quiz.lesson03.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson03.model.RealEstate;

@Repository
public interface RealEstateMapper {
	
	public RealEstate selectRealEstateById(int id);
	
	public List<RealEstate> selectRealEstateByRt(int rentPrice);
	
	// MyBatis는 파라미터를 단 한개만 보낼 수 있다.
	// 파라미터가 2개 이상일 때는 하나의 맵으로 만들어서 보내야한다. 
	// @Param을 사용하면 하나의 맵으로 만들어준다.
	public List<RealEstate> selectRealEstateByArea(
			@Param("area") int area,
			@Param("price") int price);
	
	public int insertEstate(RealEstate realEstate);
	
	public int insertEstateAsFiled(
			@Param("realtorId") int realtorId,
			@Param("address") String address,
			@Param("area") int area,
			@Param("type") String type,
			@Param("price") int price,
			@Param("rentPrice") int rentPrice);
	
	public int updateEstateAsPriceById(
			@Param("id") int id,
			@Param("price") int price,
			@Param("type") String type);
	
	public void deleteRealEstateById(int id);
	
}
