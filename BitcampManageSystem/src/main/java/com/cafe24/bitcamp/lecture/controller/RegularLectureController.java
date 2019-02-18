package com.cafe24.bitcamp.lecture.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegularLectureController {
	
	@RequestMapping("/reglec")
	public String home() {
		return "lecture/reglec";
	}
}
