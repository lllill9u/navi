package kr.or.navi.quick.food.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.navi.quick.food.service.FoodService;
import kr.or.navi.quick.food.vo.FoodVO;
import kr.or.navi.security.RealUser;
import kr.or.navi.vo.EmpVO;
import kr.or.navi.vo.WeatherVO;
import kr.or.navi.weather.service.WeatherService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/quick/food")
@Controller
public class FoodRecomController {
	
	@Inject
	FoodService service;

	@Inject
	WeatherService weather;
	
	@GetMapping()
	public String foodPage(@RealUser EmpVO vo,Model model) {
		//기본 viewCnt 0, 상세조회후에 +1씩 증가 (재반영필요)
		
		List<FoodVO> foodList = service.selectFoodsList();
		String weatherType = weather.selectCurWeather().getWeatherType();
		List<FoodVO> recomList = service.recomFoodList(vo, weatherType);
		model.addAttribute("recomList",recomList);
		model.addAttribute("foodList",foodList);
		return "quick/foodList";
	}
	
	
	//food 상세조회
	@GetMapping("{foodId}")
	public String foodDatail(@RealUser EmpVO vo,@PathVariable String foodId,Model model) {
		// 상세 겟요청을 받으면 기본 viewCnt 조회 수가 1씩 증가, -> 해당 아이디의 viewCnt 값 수정하여 업데이트 해줌
		//어떤식으로 업데이트 할것인가..!
		
		log.info("weather.selectWeatherList():{}",weather.selectWeatherList());
		
		String empId = vo.getEmpId();
		String weatherId = weather.selectCurWeather().getWeatherId();
		FoodVO foodInfo = service.selectOne(foodId);
		log.info("empId",empId);
		log.info("weatherId",weatherId);
		log.info("foodInfo",foodInfo);
		log.info("service.insertFoodViews(empId, foodId, weatherId) :{}",service.insertFoodViews(empId, foodId, weatherId));
		
		model.addAttribute("foodId",foodId);
		model.addAttribute("foodInfo",foodInfo);
		
		return "quick/foodDetail";//뷰 jsp로 반환
	}
	
	
	
	

	
}
