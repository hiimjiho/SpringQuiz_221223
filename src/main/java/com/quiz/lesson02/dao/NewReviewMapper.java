package com.quiz.lesson02.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.quiz.lesson02.model.NewReview;

@Repository
public interface NewReviewMapper {
	public List<NewReview> selectNewReview();
}
