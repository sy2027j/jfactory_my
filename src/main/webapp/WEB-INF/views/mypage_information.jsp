<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<%@ include file="./mypageHeader.jsp" %>
<!DOCTYPE html>
<html lang="en">
<body>
<div class="container">
<div class="row" >
    <div class="col-sm-2">
 <ul class="nav nav-pills flex-column" style="background-color:#e6e6fa;">
        <li class="nav-item">
          <a style="color:black; text-decoration:none "class="nav-link" href="mypage_order">주문내역</a>
        </li>
        <li class="nav-item">
          <a style="color:black; text-decoration:none "class="nav-link" href="mypage_view">최근 본 상품</a>
        </li>
        <li class="nav-item">
          <a style="color:black; text-decoration:none "class="nav-link" href="mypage_review">내가 작성한 리뷰</a>
        </li>
        <li class="nav-item">
          <a style="color:black; text-decoration:none "class="nav-link" href="mypage_ask">문의내역</a>
        </li>
        <li class="nav-item">
          <a style="color:black; text-decoration:none "class="nav-link" href="mypage_coupon">보유쿠폰</a>
        </li>
        <li class="nav-item">
          <a style="color:black; text-decoration:none "class="nav-link" href="mypage_information">회원정보수정</a>
        </li>
      </ul>      <hr class="d-sm-none">
    </div>
 <div class="col-sm-8">
       <div class="mb-4">
        <h3 class="contents" style="text-align: center; padding-top: 2%; padding-left: 10%;">회원 정보 수정</h3>
             <div style="padding-top: 5%; padding-left: 10%; padding-right: 5%; padding-bottom: 5%;">             
<form id="mypage_infomation" name="mypage_infomation" method="post" action="index">
                  <div class="myForm-group">

                     <div class="form-group">
                        <label for="MEMBER_NAME">이름 *</label> <input type="text"
                           class="form-control" id="mem_realname" name="mem_realname"
                           placeholder="이름을 입력하세요">
                        <div id="name_check"></div>
                     </div>

                     <div class="form-group">
                        <label for="member_zipcode">배송지 주소 *</label>
                        <div class="form-inline">
                           <input type="text" class="form-control" style="width: 100px;"
                              name="mem_zipcode" id="mem_zipcode" placeholder="우편번호"
                              onfocus="this.blur()"> &nbsp;
                           <button class="btn btn-default" type="button" id="findAddrBtn"
                              style="border-color: white; background-color: #e6e6fa; color: black;"
                              onclick="findAddr();">우편번호 찾기</button>
                        </div>
                        <input type="text" class="form-control" style="margin-top: 5px;"
                           name="mem_address1" id="mem_address1" placeholder="주소 입력"
                           onfocus="this.blur()"> <input type="text"
                           class="form-control" style="margin-top: 5px;"
                           name="mem_address2" id="mem_address2" placeholder="상세 주소 입력">
                        <div id="addr_check"></div>
                     </div>
                     <div class="form-group">
                        <label for="MEMBER_BIRTH">생년월일 *</label>
                        <div class="form-inline">
                           <select class="form-control" style="width: 150px;"
                              name="mem_birth_year" id="mem_birth_year">
                              <option value="">출생년도</option>
                              <c:forEach var="i" begin="1950" end="2005">
                                 <option value="${i }">${i }년</option>
                              </c:forEach>
                           </select> &nbsp;<select class="form-control" style="width: 120px;"
                              name="mem_birth_month" id="mem_birth_month">
                              <option value="">월</option>
                              <c:forEach var="i" begin="1" end="12">
                                 <option value="<c:if test="${i < 10}">0</c:if>${i }">${i }월</option>
                              </c:forEach>
                           </select> &nbsp;<select class="form-control" style="width: 120px;"
                              name="mem_birth_day" id="mem_birth_day">
                              <option value="">일</option>
                              <c:forEach var="i" begin="1" end="31">
                                 <option value="<c:if test="${i < 10}">0</c:if>${i }">${i }일</option>
                              </c:forEach>
                           </select>
                        </div>
                     </div>
                     <div class="form-group">
                        <label for="MEMBER_BIRTH">전화번호 *</label>
                        <div class="form-inline">
                           <select class="form-control" style="width: 125px;"
                              name="mem_phone" id="mem_phone">
                              <option value="010">010</option>
                              <option value="011">011</option>
                              <option value="012">012</option>
                              <option value="013">013</option>
                           </select> &nbsp; - &nbsp; <input type="text" class="form-control"
                              id="mem_phone1" name="mem_phone1" style="width: 150px">
                           &nbsp; - &nbsp; <input type="text" class="form-control"
                              id="mem_phone2" name="mem_phone2" style="width: 150px">
                           <br />
                           <div id="phone_check"></div>
                           <input type="checkbox" id="SMS_AGREE" name="SMS_AGREE"
                              value="0"> <font size="3"> &nbsp;SMS 수신에 동의합니다.</font>
                        </div>
                     </div>
                     <div class="form-group">
                        <label for="MEMBER_EMAIL">이메일 주소 *</label>
                        <div class="form-inline">
                           <input type="email" class="form-control" id="mem_email"
                              name="mem_email" placeholder="이메일을 입력하세요" style="width: 410px">
                           &nbsp;
                           <button type="button" class="btn btn-default"
                              id="isCheck_Email" name="isCheck_Email"
                              style="border-color: white; background-color: #e6e6fa; color: black;"
                              onclick="Email_send();">인증</button>
                           <input type="hidden" id="isEmailCheck" value="0">
                        </div>
                        <div id="email_check"></div>
                        <input type="checkbox" id="EMAIL_AGREE" name="EMAIL_AGREE"
                           value="0"> <font size="3"> 이메일 수신에 동의합니다.</font>
                     </div>
                     <div id="isCheck_EmailForm" class="form-group">
                        <label for="user_email">인증코드 확인 *</label>
                        <div class="form-inline">
                           <input type="email" class="form-control" id="emailAuth"
                              name="emailAuth" placeholder="인증코드를 입력하세요"> &nbsp;
                           <button type="button" class="btn btn-default" id="isAuth"
                              style="border-color: white; background-color: #e6e6fa; color: black;"
                              onclick="Email_chk();">확인</button>
                           <input type="hidden" name="mem_email_cert" id="mem_email_cert"
                              class="mem_email_cert" value="0">
                        </div>
                     </div>
                     <!-- 
         <div class="chk_allAgree">
            <input type="checkbox" name="chk_allAgree" id="chk_allAgree">
            <b>내용 확인 및 전체 동의</b>
         </div> -->
                     <br />
                     <hr>
                     <div class="choice_Title">
                        <h3 class="choice_Title" style="text-align: center">선택사항</h3>
                     </div>

                     <div>
                        <h5>
                           <label for="sex_Title">성별</label>
                        </h5>
                     </div>

                     <div>
                        <input type="radio" name="mem_sex1" value="0">여성 &nbsp;
                        <input type="radio" name="mem_sex1" value="1">남성
                     </div>
                     <input type="hidden" name="mem_sex" id="mem_sex" value="">
                     <br />
                     <div>
                        <h5>
                           <label for="skintype_Title">피부 타입</label>
                        </h5>
                     </div>
                     <div>
                        <input type="radio" name="mem_skintype1" value="건성">건성
                        &nbsp; <input type="radio" name="mem_skintype1" value="중성">중성
                        &nbsp; <input type="radio" name="mem_skintype1" value="지성">지성
                        &nbsp; <input type="radio" name="mem_skintype1" value="복합성">복합성
                        &nbsp; <input type="radio" name="mem_skintype1" value="민감성">민감성
                        &nbsp; <input type="radio" name="mem_skintype1" value="트러블">트러블
                        &nbsp; <input type="radio" name="mem_skintype1" value="아토피">아토피
                        &nbsp; <input type="radio" name="mem_skintype1" value="기타">기타
                     </div>
                     <input type="hidden" name="mem_skintype" id="mem_skintype"
                        value=""> <br />
                     <div>
                        <h5>
                           <label for="skinworry_Title">피부 고민 (최대 2개 선택)</label>
                        </h5>
                     </div>
                     <div>
                        <input onclick="CountChecked(this)" type="checkbox"
                           name="mem_skintrouble" value="주름">주름 &nbsp; <input
                           onclick="CountChecked(this)" type="checkbox"
                           name="mem_skintrouble" value="여드름">여드름 &nbsp; <input
                           onclick="CountChecked(this)" type="checkbox"
                           name="mem_skintrouble" value="피지&모공">피지&모공 &nbsp; <input
                           onclick="CountChecked(this)" type="checkbox"
                           name="mem_skintrouble" value="수분부족">수분부족 &nbsp; <input
                           onclick="CountChecked(this)" type="checkbox"
                           name="mem_skintrouble" value="다크써클">다크써클 &nbsp; <input
                           onclick="CountChecked(this)" type="checkbox"
                           name="mem_skintrouble" value="각질">각질 &nbsp; <input
                           onclick="CountChecked(this)" type="checkbox"
                           name="mem_skintrouble" value="기타">기타 &nbsp; <input
                           type="hidden" value="" id="mem_skintrouble1"
                           name="mem_skintrouble1"> <input type="hidden" value=""
                           id="mem_skintrouble2" name="mem_skintrouble2">
                     </div>
                     <br /> <br />
                     <div align="center">
                        <button
                           style="border-color: white; background-color: #e6e6fa; color: black; WIDTH: 100pt; HEIGHT: 30pt"
                           type="button" class="btn" id="infomation_update_Btn"
                           onclick="infomation_update();">회원정보 수정</button>
                        <button
                           style="border-color: white; background-color: black; color: white; WIDTH: 80pt; HEIGHT: 30pt"
                           type="button" class="btn center"
                           onclick="location.href='joinout_check'">회원 탈퇴</button>
                     </div>
                     <br /> <br /> <br /> <br />
                  </div>
               </form>
            </div>
            </div>
            </div>
            </div>
            
            
   

<%@ include file="./footer.jsp"%>
</body>

</html>









