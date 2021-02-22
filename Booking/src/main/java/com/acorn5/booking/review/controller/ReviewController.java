package com.acorn5.booking.review.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.acorn5.booking.review.service.ReviewService;

@Controller
public class ReviewController {
	//의존객체 DI
	@Autowired
	private ReviewService service;
	
	//by채영_리뷰 자세히 보기
	@RequestMapping("/review/detail")
	public ModelAndView detail(@RequestParam int num, ModelAndView mView) {
		service.reviewDetail(num, mView);
		mView.setViewName("rivew/detail");
		return mView;
	}
}
