package one.project.mall.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/board/{bno}/{pg}")
public class Boardcontroller {
	@RequestMapping(value = "/", method=RequestMethod.GET)
	public String list() {
		return "board/board_list";
	}
}
