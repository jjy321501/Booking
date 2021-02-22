package com.acorn5.booking.review.dto;

public class ReviewDto {
	private int num;
	private String writer;
	private String title;
	private String content;
	private String date;
	private String author;
	private String publisher;
	private String bookImage;
	
	public ReviewDto() {}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getBookImage() {
		return bookImage;
	}

	public void setBookImage(String bookImage) {
		this.bookImage = bookImage;
	}

	public ReviewDto(int num, String writer, String title, String content, String date, String author, String publisher,
			String bookImage) {
		super();
		this.num = num;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.date = date;
		this.author = author;
		this.publisher = publisher;
		this.bookImage = bookImage;
	}
}
