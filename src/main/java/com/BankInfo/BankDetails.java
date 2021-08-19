package com.BankInfo;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class BankDetails {
	@RequestMapping("/bankbranches")
	public String bankBranches() {
		return "bankbranches";
	}
	@RequestMapping("/bankservices")
	public String bankServices() {
		return "bankservices";
	}
	@RequestMapping("/index")
	public String bankIndex() {
		return "index";
	}
	@RequestMapping("/forgetpwd")
	public String bankForgetpwd() {
		return "forgetpwd";
	}
	@RequestMapping("/signup")
	public String bankSignup() {
		return "signup";
	}
	@RequestMapping("/contactus")
	public String bankContactus() {
		return "contactus";
	}

}
