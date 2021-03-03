package com.acorn5.booking.review.service;

<<<<<<< HEAD
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.acorn5.booking.review.dto.ReviewDto;

public interface ReviewService {
	// by남기._2021224

	//새 리뷰를 저장하는 메소드 
	public void saveContent(ReviewDto dto, HttpServletRequest request);
	//글목록을 얻어오고 페이징 처리에 필요한 값들을 ModelAndView 객체에 담아주는 메소드 
	public void getList(ModelAndView mView, HttpServletRequest request);
	//이미지를 저장하는 메소드
	public String saveImage(MultipartFile image, HttpServletRequest request);
}
=======
import org.springframework.web.servlet.ModelAndView;

public interface ReviewService {
	//by채영_리뷰 자세히 보기
	public void reviewDetail(int num, ModelAndView mView);
	//by채영_리뷰 삭제하기
	public void deleteReview(int num);
}
>>>>>>> ef3bf00df3e4e57c0226f53610c7b1d70e107c7c
