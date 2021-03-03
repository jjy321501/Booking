package com.acorn5.booking.review.controller;

<<<<<<< HEAD
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.acorn5.booking.review.dto.ReviewDto;
=======
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

>>>>>>> ef3bf00df3e4e57c0226f53610c7b1d70e107c7c
import com.acorn5.booking.review.service.ReviewService;

@Controller
public class ReviewController {
<<<<<<< HEAD
	// by남기._2021224
	
	//의존객체 DI 을 필드에 선언해둔다.
	@Autowired
	private ReviewService service;
	
	//글 목록 요청처리
	@RequestMapping("/review/list")
	public ModelAndView list(ModelAndView mView, 
			HttpServletRequest request) {
		service.getList(mView, request);
		mView.setViewName("review/list");
		return mView;
	}
	
	//새 리뷰 글쓰기 요청 처리
	@RequestMapping("/review/private/insertform")
	public String insertform() {
		// /WEB-INF/views/    Review/private/insertform      .jsp 
		return "review/private/insertform";
	}
	
	@RequestMapping(value = "/review/private/insert", method = RequestMethod.POST)
	public String insert(ReviewDto dto, HttpServletRequest request) {
		service.saveContent(dto, request);
		return "redirect:/review/list.do";
	}
	
}
=======
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
	
	//by채영_리뷰 삭제하기 
	@RequestMapping("/review/private/delete")
	public String delete(@RequestParam int num) {
		service.deleteReview(num);
		return "review/private/delete";
	}
}
>>>>>>> ef3bf00df3e4e57c0226f53610c7b1d70e107c7c
