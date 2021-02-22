package com.acorn5.booking.review.dao;

import com.acorn5.booking.review.dto.ReviewDto;

public interface ReviewDao {
	//by채영_리뷰 정보 얻기
	public ReviewDto getData(int num);
	//by채영_리뷰 삭제하기 
	public void deleteReview(int num);
}
