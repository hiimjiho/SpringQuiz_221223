package com.quiz.lesson06.bo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson06.dao.BookingMapper;
import com.quiz.lesson06.model.Booking;

@Service
public class BookingBO { 
	@Autowired 
	private BookingMapper bookingMapper;
	
	public List<Booking> getBookingList() {
		return bookingMapper.selectBookingList();
	}
	
	// delete 요청 input:id	output:X
	public void deleteBookingById(int id) {
		bookingMapper.deleteBookingById(id);;
	}
	
	//insert	
	public void addBooking(String name, Date date, int day, int headcount, String phoneNumber) {
		bookingMapper.insertBooking(name, date, day, headcount, phoneNumber);
	}
	
	// input:name, phoneNumber 	output:Booking
	public Booking getBookingByNamePhoneNumber(String name, String phoneNumber) {
		List<Booking> bookingList = bookingMapper.getBookingByNamePhoneNumber(name, phoneNumber);
		//[1, 3, 7]
		// []
		// [7]
		if(bookingList.isEmpty()) {
			return null;
		}
		
		// 비어있지 않으면 값이 있고, 마지막 인덱스에 있는 값을 불러준다.(최신값)
		return bookingList.get(bookingList.size() -1);
	}
}
