package ro.emanuel;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class brandController {
	@GetMapping("/laptops")
	public ModelAndView showLaptop(@RequestParam String brand)
	{
		ModelAndView mav = new ModelAndView("laptops.jsp");
		int numberOfCharacters = brand.length();
		String parSauImpar = numberOfCharacters%2==0 ? "Par" : "Impar";
		mav.addObject("brand", brand);
		mav.addObject("numberOfCharacters",numberOfCharacters);
		mav.addObject("parSauImpar",parSauImpar);
		return mav;
	}
	@GetMapping("/laptop")
	public ModelAndView showWholeLaptop(@RequestParam String brand, 
			@RequestParam int pret, 
			@RequestParam int ram)
	{
		ModelAndView mav = new ModelAndView("afisareLaptop.jsp");
		Laptop lap = new Laptop(brand,pret,ram);
		mav.addObject("lap",lap);
		return mav;
	}
}