package kr.co.one.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/main")
public class TestController {
	@RequestMapping(value = "/")
	public String index() {
		return "main";
	}
}
