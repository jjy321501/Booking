package com.acorn5.booking.review.dao;

<<<<<<< HEAD
import java.util.List;

import com.acorn5.booking.review.dto.ReviewDto;

public interface ReviewDao {
	// by남기._2021224
	
	//글 추가
	public void insert(ReviewDto dto);
	//글 하나의 정보 얻어오기
	public ReviewDto getData(int num);
	//글 목록 얻어오기 (페이징 처리와 검색 키워드를 고려한 목록)
	public List<ReviewDto> getList(ReviewDto dto);
	//글의 갯수 얻어오기(검색 키워드에 해당하는 갯수)
	public int getCount(ReviewDto dto);
	//글 조회수 올리기
	public void addViewCount(int num);
}
=======
import com.acorn5.booking.review.dto.ReviewDto;

public interface ReviewDao {
	//by채영_리뷰 정보 얻기
	public ReviewDto getData(int num);
	//by채영_리뷰 삭제하기 
	public void deleteReview(int num);
}
>>>>>>> ef3bf00df3e4e57c0226f53610c7b1d70e107c7c
