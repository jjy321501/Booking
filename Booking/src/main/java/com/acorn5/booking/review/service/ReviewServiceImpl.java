package com.acorn5.booking.review.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.acorn5.booking.review.dao.ReviewDao;
import com.acorn5.booking.review.dto.ReviewDto;

@Service
public class ReviewServiceImpl implements ReviewService{
	//by채영_의존객체DI
	@Autowired
	private ReviewDao reviewDao;
	
	@Override //by채영_리뷰 자세히 보기 
	public void reviewDetail(int num, ModelAndView mView) {
		//by채영_번호로 리뷰 불러오기
		ReviewDto dto = reviewDao.getData(num);
		mView.addObject("dto", dto);
	}

	@Override //b채영_리뷰 삭제 
	public void deleteReview(int num) {
		reviewDao.deleteReview(num);
	}
}
	
	
