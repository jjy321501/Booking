package com.acorn5.booking.review.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn5.booking.review.dto.ReviewDto;

@Repository
public class ReviewDaoImpl implements ReviewDao {
	@Autowired
	private SqlSession session;

	@Override
	public ReviewDto getData(int num) {
		ReviewDto dto = session.selectOne("review.getData", num);
		return dto;
	}

	@Override
	public void deleteReview(int num) {
		int count = session.delete("review.delete", num);
		if(count == 0) {
			throw new DBFailException("리뷰를 삭제하지 못했습니다.");
		}
	}
	
	
}
