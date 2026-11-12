package com.rapido.controller;

import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.rapido.request.BookingRequest;

@Controller
public class BookingController {
	
	@GetMapping("showBookingPage")
	public String doBooking() {
		return "booking-page";
	}
	
	@PostMapping("bookRide")
	public String acceptBooking(@ModelAttribute BookingRequest bookingRequest , Model model) {
		
		System.out.println("Mobile : " + bookingRequest.getMobile());
		System.out.println("Source : " + bookingRequest.getSource());
		System.out.println("Destination : " + bookingRequest.getDestination());
		System.out.println("Ride Type : " + bookingRequest.getRidetype());
		System.out.println("Amount : " + bookingRequest.getAmount());
		
		model.addAttribute("riderName", "Zaynnnn");
		model.addAttribute("carNo", "KA 01 AB 1234 ");
		
		Random random = new Random();
		
		int eta = random.nextInt(9) + 1;
		model.addAttribute("eta", eta + " mins");
		int otp = random.nextInt(9000) + 1000;
		model.addAttribute("otp", otp);
		
		return "booking-confirmation";
	}
}
