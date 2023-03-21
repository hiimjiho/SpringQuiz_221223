package com.quiz.lesson03.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson03.model.RealEstate;

@Repository
public interface RealEstateMapper {
	public RealEstate selectRealEstateByRentPrice(@Param("rentPrice") Integer rentPrice);
}
