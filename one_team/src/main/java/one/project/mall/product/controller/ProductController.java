package one.project.mall.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/product/{ocno}/{cno}/{pno}")
public class ProductController {
	@RequestMapping(value = "/", method=RequestMethod.GET)
	public String list() {
		return "product/product_list";
	}
}
