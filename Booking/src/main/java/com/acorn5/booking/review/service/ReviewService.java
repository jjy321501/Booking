package com.acorn5.booking.review.service;

import org.springframework.web.servlet.ModelAndView;

public interface ReviewService {
	//by채영_리뷰 자세히 보기
	public void reviewDetail(int num, ModelAndView mView);
	//by채영_리뷰 삭제하기
	public void deleteReview(int num);
}
