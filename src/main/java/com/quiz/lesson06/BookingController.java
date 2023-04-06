package com.quiz.lesson06;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quiz.lesson06.bo.BookingBO;
import com.quiz.lesson06.model.Booking;

@RequestMapping("/lesson06/quiz03")
@Controller
public class BookingController {
	@Autowired
	private BookingBO bookingBO;
	
	// 	http://localhost/lesson06/quiz03/add_pension
	@GetMapping("/add_pension")
	public String addPension() {
		return "lesson06/pension";
	}
	
	// 예약 조회 - AJAX 통신
	@ResponseBody
	@GetMapping("/search_booking")
	public Map<String, Object> searchBooking(
			@RequestParam("name") String name,
			@RequestParam("phoneNumber") String phoneNumber){
		
		Map<String, Object> result = new HashMap<>();
		
		// TODO select
		Booking booking = bookingBO.getBookingByNamePhoneNumber(name, phoneNumber);
		if(booking != null) {
			result.put("code", 1);
			result.put("booking", booking);
		} else {
			result.put("code", 500);
		}
		
		
		
		
		return result;
	}
	
// 	http://localhost/lesson06/quiz03/order_list
	@GetMapping("/order_list")
	public String orderList(Model model) {
		List<Booking> bookingList = bookingBO.getBookingList();
		model.addAttribute("bookingList", bookingList);
		return "lesson06/bookingList";
	}
	
	// 예약 삭제 - ajax호출
	@ResponseBody
	@DeleteMapping("/delete_booking")
	public Map<String, Object> deleteBooking(
			@RequestParam("id") int id){
		
		// delete
		bookingBO.deleteBookingById(id);
		
		Map<String, Object> result = new HashMap<>();
		result.put("code", 1);
		result.put("result", "성공");
		return result;
	}
	
// 	http://localhost/lesson06/quiz03/booking_order
	@GetMapping("/booking_order")
	public String bookigOrder() {
		return "lesson06/bookingOrder";
	}
	
	@ResponseBody
	@PostMapping("add_booking")
	public Map<String, Object> addBooking(
			@RequestParam("name") String name,
			@RequestParam("date") @DateTimeFormat(pattern="yyyy-MM-dd") Date date,
			@RequestParam("day") int day,
			@RequestParam("headcount") int headcount,
			@RequestParam("phoneNumber") String phoneNumber){
		
		// insert
		bookingBO.addBooking(name, date, day, headcount, phoneNumber);
		
		Map<String, Object> result = new HashMap<>();
		result.put("code", 1);
		result.put("result", "성공");
		
		return result;
	}
}