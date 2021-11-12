package com.douzone.ch08.controller.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("guestbookTestController")
@RequestMapping("/test/gb")
public class GuestbookController {
	
	@RequestMapping("/ex1")
	public String ex1() {
		return "gb/ex1";
	}
}
