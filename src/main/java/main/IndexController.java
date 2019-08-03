package main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController{
	@RequestMapping("/index.do")
	public String main(){
		System.out.println("어노테이션 기반");
		return "index";
	}
	
	@RequestMapping("/menu/jdbc.do")
	public String showjdbcMenu(){
		System.out.println("springjdbc");
		return "menu/jdbc";
	}
	
	@RequestMapping("/menu/mybatis.do")
	public String showmybatisMenu(){
		System.out.println("mybatis");
		return "menu/mybatis";
	}
	
	@RequestMapping("/menu/advanced.do")
	public String showmyadvancedMenu(){
		System.out.println("advanced");
		return "menu/advanced";
	}
}
