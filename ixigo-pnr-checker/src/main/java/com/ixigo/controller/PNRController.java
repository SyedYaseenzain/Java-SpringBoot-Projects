package com.ixigo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PNRController {
	
	
	@GetMapping("pnrCheck")
	public String checkPNRStatus(@RequestParam("pnrNumber") String pnrNo) {
		System.out.println("PNRController.checkPNRStatus() PNR no is : " + pnrNo);
		return "pnr-status";
	}

}
