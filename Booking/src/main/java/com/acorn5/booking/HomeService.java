package com.acorn5.booking;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.acorn5.booking.book.dto.BookDto;

@Service
public interface HomeService {
	public List<BookDto> bestSeller(String d_cont,int display, int start, String sort, HttpServletRequest request, ModelAndView mView);
}
