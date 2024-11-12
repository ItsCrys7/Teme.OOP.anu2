package ro.emanuel;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class convertorController {
	@GetMapping("/convert")
	public ModelAndView convertor
	(@RequestParam int suma,
	@RequestParam(defaultValue = "RON") String from, 
	@RequestParam(defaultValue = "EUR") String to, 
	@RequestParam int rate)
	{
		
		ModelAndView mav = new ModelAndView("convertor.jsp");
		int finalSum=suma*rate;
		mav.addObject("sumaConvertita",finalSum);
		return mav;
	}
}