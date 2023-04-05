package com.quiz.lesson06;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/lesson06/quiz03")
@Controller
public class BookingController {
	// 	http://localhost/lesson06/quiz03/add_pension
	@GetMapping("/add_pension")
	public String addPension() {
		return "lesson06/pension";
	}
	
// 	http://localhost/lesson06/quiz03/order_list
	@GetMapping("/order_list")
	public String orderList() {
		return "lesson06/bookingList";
	}
	
// 	http://localhost/lesson06/quiz03/booking_order
	@GetMapping("/booking_order")
	public String bookigOrder() {
		return "lesson06/bookingOrder";
	}
}