package one.project.mall.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void login() {
	}

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main() {
		return "admin/main";
	}
}
