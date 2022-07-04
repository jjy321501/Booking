# :book:  BOOKING 
2020.02 ~ 2020.04 <br>
Acorn 아카데미 5 팀 프로젝트
( 도서 추천 웹 서비스 )

# 사용 기술 
- Back-End:
-Java  
-Spring  
-Mybatis  
-Oracle DB
- Html, CSS, Javascript, JQuery, Ajax, BootStrap
- Apache Tomcat
 
#  Api
 - Naver 도서 Api 
 - Kakao Map Api
 - KG 이니시스 결제 Api 
 - Daum 도로명 Api 
 ----------------------------------------------------------------------- 
# 디렉토리 구조
```bash
📦views
 ┣ 📂bookList
 ┃ ┣ 📜bestSeller.jsp
 ┃ ┣ 📜CategoryList.jsp
 ┃ ┗ 📜conditionSearch.jsp
 ┣ 📂detail
 ┃ ┣ 📜bookDetail.jsp
 ┃ ┗ 📜detailAjax.jsp
 ┣ 📂error
 ┃ ┣ 📜db_fail.jsp
 ┃ ┗ 📜not_allow.jsp
 ┣ 📂include
 ┃ ┣ 📜footer.jsp
 ┃ ┣ 📜navbar.jsp
 ┃ ┣ 📜resource.jsp
 ┃ ┣ 📜sideindex.jsp
 ┃ ┗ 📜sideusers.jsp
 ┣ 📂map
 ┃ ┗ 📜mapsearch.jsp
 ┣ 📂pay
 ┃ ┣ 📜cart.jsp
 ┃ ┣ 📜delete.jsp
 ┃ ┣ 📜deleteCart.jsp
 ┃ ┣ 📜insert.jsp
 ┃ ┣ 📜order_insert.jsp
 ┃ ┣ 📜order_insertform.jsp
 ┃ ┣ 📜paid.jsp
 ┃ ┣ 📜pay.jsp
 ┃ ┗ 📜update.jsp
 ┣ 📂review
 ┃ ┣ 📂private
 ┃ ┃ ┣ 📜reviewDelete.jsp
 ┃ ┃ ┣ 📜reviewInsert.jsp
 ┃ ┃ ┣ 📜reviewInsertform.jsp
 ┃ ┃ ┣ 📜reviewUpdate.jsp
 ┃ ┃ ┗ 📜reviewUpdateform.jsp
 ┃ ┣ 📜reviewBookList.jsp
 ┃ ┣ 📜reviewCommentList.jsp
 ┃ ┣ 📜reviewDetail.jsp
 ┃ ┗ 📜reviewList.jsp
 ┣ 📂users
 ┃ ┣ 📂private
 ┃ ┃ ┣ 📜delete.jsp
 ┃ ┃ ┣ 📜info.jsp
 ┃ ┃ ┣ 📜my_order.jsp
 ┃ ┃ ┣ 📜my_review.jsp
 ┃ ┃ ┣ 📜order_detail.jsp
 ┃ ┃ ┣ 📜profile_upload.jsp
 ┃ ┃ ┣ 📜pwd_update.jsp
 ┃ ┃ ┣ 📜pwd_updateform.jsp
 ┃ ┃ ┣ 📜update.jsp
 ┃ ┃ ┗ 📜updateform.jsp
 ┃ ┣ 📜login.jsp
 ┃ ┣ 📜login_form.jsp
 ┃ ┣ 📜logout.jsp
 ┃ ┣ 📜signup.jsp
 ┃ ┗ 📜signup_form.jsp
 ┗ 📜home.jsp
```
# 구현 기능
| Home | 전체도서 | 리뷰 | 지도 | 마이페이지 | 결제 |
|:------|:----------:|:----------:|:------:|:----------:|:-----:|
| 도서 검색 | 장르별 도서 | 리뷰 목록 | 서점 검색 | 개인정보 수정 | 북카트 |
| 베스트 셀러 | 인기 도서 | 리뷰 작성 | | 나의 리뷰 | 배송비 추가 |
| 책 랜덤매칭 | 최신 도서 | 별점 | | 주문 내역 | 결제 |
| 책 추천 캐러셀 (관심사, 최근 검색어) | 추천 도서 | 스포일러 체크 | | 회원 탈퇴 | 바로 결제 |
| Api 페이징 | | 댓글 | 
| 상세 정보 | | 조회수 | 

# Home
<img src="https://user-images.githubusercontent.com/72749783/117821251-5a0c4180-b2a6-11eb-9357-b406deeef8a2.PNG"  width="400" height="370">

# 베스트셀러 
<img src="https://user-images.githubusercontent.com/72749783/117823790-d142d500-b2a8-11eb-9cee-25bdee9e1cfd.PNG"  width="400" height="370">

# 맞춤 책 추천 
### *최근검색어, 관심사 기반의 추천*
<img src="https://user-images.githubusercontent.com/72749783/117823821-da33a680-b2a8-11eb-9722-bf34729c2c7d.PNG"  width="400" height="370">

# 책 랜덤 추천 
###  *Booking 기능*
<img src="https://user-images.githubusercontent.com/72749783/117823858-e61f6880-b2a8-11eb-94f0-a198e3707b56.PNG"  width="400" height="370">

# Footer 
### *사이트의 정보를 담을 수 있는 Footer*
<img src="https://user-images.githubusercontent.com/72749783/117823894-ee77a380-b2a8-11eb-9fb1-ff65a16c8971.PNG"  width="400" height="370">

# 로그인 
### *로그인 정보 저장* 
<img src="https://user-images.githubusercontent.com/72749783/117825607-6abeb680-b2aa-11eb-896f-e40f310bad2c.PNG"  width="400" height="370">

# 마이페이지 
### *( 활동내역 / 회원정보관리 )*
<img src="https://user-images.githubusercontent.com/72749783/117824957-dd7b6200-b2a9-11eb-9706-b07d5092ab18.PNG"  width="400" height="370">

# 전체도서 
### *( 카테고리 )* 
<img src="https://user-images.githubusercontent.com/72749783/117824808-c0469380-b2a9-11eb-9c1a-94f2ef8ba6a2.PNG"  width="400" height="370">

# 리뷰 
### *( 목록 / 리뷰쓰기 / 책 검색 / 댓글 )*
<img src="https://user-images.githubusercontent.com/72749783/117825504-57abe680-b2aa-11eb-878e-41ee15d9c47b.PNG"  width="400" height="370">
<img src="https://user-images.githubusercontent.com/72749783/117825519-5a0e4080-b2aa-11eb-9dbb-04bb449afa17.PNG"  width="400" height="370">
<img src="https://user-images.githubusercontent.com/72749783/117825528-5b3f6d80-b2aa-11eb-82a2-7a19e173f5fb.PNG"  width="400" height="370">
<img src="https://user-images.githubusercontent.com/72749783/117825534-5c709a80-b2aa-11eb-89db-90ef238f62b9.PNG"  width="400" height="370">

# 지도 
### *( 서점검색 )*
<img src="https://user-images.githubusercontent.com/72749783/117825693-7f02b380-b2aa-11eb-97c3-0eace5fab65f.PNG"  width="400" height="370">

#  상세페이지 
### *( 작가의 책 / 책 리뷰 )*
<img src="https://user-images.githubusercontent.com/72749783/117824827-c3418400-b2a9-11eb-8f12-b6793756e96a.PNG"  width="400" height="370">

# 북카트 
### *(카트수량 뱃지)*
<img src="https://user-images.githubusercontent.com/72749783/117825742-8924b200-b2aa-11eb-9913-5c31fc50247c.PNG"  width="400" height="370">
<img src="https://user-images.githubusercontent.com/72749783/117825755-8cb83900-b2aa-11eb-91fb-ef69a01ef538.PNG"  width="400" height="370">

# 결제 
### *( 주문서작성 / 결제 Api )*
<img src="https://user-images.githubusercontent.com/72749783/117825788-92ae1a00-b2aa-11eb-817a-79713e461a80.PNG"  width="400" height="370">
<img src="https://user-images.githubusercontent.com/72749783/117825801-95107400-b2aa-11eb-9eea-4f1d88d86423.PNG"  width="400" height="370">



 

