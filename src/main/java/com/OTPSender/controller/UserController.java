package com.OTPSender.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mapping.AccessOptions.GetOptions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.OTPSender.services.OTPService;
import com.OTPSender.services.userService;

@Controller
public class UserController {
	String otp;
	@Autowired
	private userService userservice;
	@Autowired
	private OTPService otpservice;
	
	@GetMapping("/adminlogin")
	public String getlogin(Model model) {
		
		return "adminlogin";
	}
	
	@GetMapping("/loginsts")
	public String getOtp(@RequestParam ("username") String Username) {
		String demo="+91"+Username;
		otp=userservice.generateOtp(Username);
	    otpservice.sendOtp(demo,otp);
	    System.out.println(otp);
		return "success";
	}
	
	@GetMapping("/valid")
	public String Authenticate(@RequestParam ("OTP") String Otp) {
		if(otp != Otp) {
			return "valid";
		}else {
		return "invalid";
		}
	}
}
