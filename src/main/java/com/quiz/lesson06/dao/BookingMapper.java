package com.quiz.lesson06.dao;

import java.util.List;

import com.quiz.lesson06.model.Booking;

public interface BookingMapper {
	public List<Booking> selectBookingList();
}
