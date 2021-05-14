<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html lang="en">

<style>
div.review {
	float: right;
	margin-top: -20px;
	margin-right: 15px;
}

div.mypage_top {
	margin-top: 80px;
}

div.reviewlist {
	float: right;
	margin-top: -200px;
	margin-right: 230px;
}

div.mypage_reviewlist {
	margin-top: -30px;
}

div.membership_out {
	padding-top: 20px;
	width: 150px;
	height: 30px;
	margin: 0 auto;
}

div.infomation_title {
	float: left;
	margin-top: -20px;
	margin-left: 120px;
	padding-bottom: 20px;
}

div.infomation_input {
	margin: 0 auto;
	margin-top: -200px;
}

li a.current {
	background-color: #e6e6fa;
	color: gray;
}

ul.sidenav_list {
	background-color: #e6e6fa;
	color: gray;
	width: 175px;
	list-style-type: none;
	margin-top: -36px;
	padding: 0;
}

ul.userpoint {
	float: right;
	margin-right: -100px;
	margin-top: -95px;
	width: 1000px;
}

li a {
	display: block;
	padding: 5px;
	text-decoration: none;
	text-align: center;
	font-weight: bold;
}

li a . current {
	background-color: #e6e6fa;
	color: white;
}

h2.subTitle3 {
	float: right;
	margin-top: -256px;
	margin-right: 500px;
}
</style>

<body>

	<div class="mypage_reviewlist container">

		<div class="mypage_top container">
			<div class="row"></div>
			<div class="row">
				<div class="col-lg-12">
					<hr style="size: 100%">
					<span class="name">임연희</span>님은 &nbsp; <strong class="gradeW">
						라벤더</strong> 회원입니다. <br>
					<p class="totalGradePrice">
						다음등급까지 <strong>100,000 원</strong> <span class="fcolor2">부족</span>
						<span class="sub">(다음 등급 산정일 &nbsp; 2021.06.01)</span> <br>
						당월포함 직전6개월 구매금액 <strong>0 원</strong>
					</p>
					<ul class="userpoint">
						<li><a href="/mypage_point" class="point linkArwBs">보유
								포인트 &emsp; <span class="length"> <span class="num">0</span>P
							</span>
						</a></li>
						<li><a href="/mypage_coupon" class="coupon linkArwBs">보유
								쿠폰 &emsp; <span class="length"><span class="num">1</span>장
							</span>
						</a></li>
					</ul>
					<hr style="size: 100%">
				</div>
			</div>

			<div>
				<ul class="sidenav_list">
					<li><a class="current" href="mypage_order">주문내역</a></li>
					<li><a class="current" href="mypage_view"
						style="display: block; padding: 8px; text-decoration: none;">최근
							본 상품</a></li>
					<li><a class="current" href="mypage_review"
						style="display: block; padding: 8px; text-decoration: none;">내가
							작성한 리뷰</a></li>
					<li><a class="current" href="mypage_ask"
						style="display: block; padding: 8px; text-decoration: none;">문의내역</a></li>
					<li><a class="current" href="mypage_coupon"
						style="display: block; padding: 8px; text-decoration: none;">보유
							쿠폰</a></li>
					<li><a class="current" href="mypage_point"
						style="display: block; padding: 8px; text-decoration: none;">보유
							포인트</a></li>
					<li><a class="current" href="mypage_infomation"
						style="display: block; padding: 8px; text-decoration: none;">회원정보
							수정</a></li>
				</ul>
			</div>
		</div>

		<!-- //주문내역 네비 -->
		<!-- contents -->
		<div class="infomation_title container col-lg-9">
			<section class="contents">
				<h2 class="subTitle3">회원정보수정</h2>
			</section>
		</div>

		<div class="infomation_input container col-lg-7"
			style="overflow: scroll; width: 5000px; height: 200px;">
			<div class="id">
				<div class="id_Title">
					<h6>
						<label for="id">아이디</label>
					</h6>
				</div>
				<div class="id_input">
					<input type="text" id="id" class="int" maxlength="20"
						style="height: 30px; width: 225px;">
				</div>
				<div class="id_check">
					<button type="button" onclick="alert('사용하실 수 있는 id입니다.')">중복
						확인</button>
					<span class="error_next_box"></span>
				</div>
			</div>

			<div class="pw">
				<div class="pw_Title">
					<h6>
						<label for="pw">비밀번호</label>
					</h6>
				</div>
				<div class="pw_input">
					<input type="password" id="pw" class="int" maxlength="20"
						placeholder="영문자, 숫자 포함 8자-20자"
						style="height: 30px; width: 225px;">
				</div>
				<span class="error_next_box"></span>
			</div>
			<div class="check_pw_wrap">
				<div class="check_pw">
					<h6>
						<label for="checkpw">비밀번호 확인</label>
					</h6>
				</div>
				<div class="check_pw_input">
					<span class="box int_checkpw"> <input type="password"
						id="check_pw" class="int" minlength="8" maxlength="20"
						placeholder="비밀번호를 다시 입력해주세요" style="height: 30px; width: 225px;">
					</span> <span class="error_next_box"></span>
				</div>
			</div>

			<div class="name">
				<div class="name_Title">
					<h6>
						<label for="name">이름</label>
					</h6>
				</div>
				<div class="name_input">
					<span class="box int_name"> <input type="text" id="name"
						class="int" maxlength="20" style="height: 30px; width: 225px;">
					</span> <span class="error_next_box"></span>
				</div>
			</div>

			<div class="birth">
				<div class="birth_Title">
					<h6>
						<label for="birth">생년월일</label>
					</h6>
				</div>

				<div class="bir_wrap">
					<div class="bir_input">
						<input type="text" id="yy" class="int" maxlength="4"
							placeholder="년도(4자)" style="height: 30px; width: 120px;">
					</div>
					<div class="month">
						<select id="mm">
							<option>월</option>
							<option value="01">1</option>
							<option value="02">2</option>
							<option value="03">3</option>
							<option value="04">4</option>
							<option value="05">5</option>
							<option value="06">6</option>
							<option value="07">7</option>
							<option value="08">8</option>
							<option value="09">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
						</select>
					</div>

					<div class="day">
						<select id="dd">
							<option>일</option>
							<option value="01">1</option>
							<option value="02">2</option>
							<option value="03">3</option>
							<option value="04">4</option>
							<option value="05">5</option>
							<option value="06">6</option>
							<option value="07">7</option>
							<option value="08">8</option>
							<option value="09">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
							<option value="18">18</option>
							<option value="19">19</option>
							<option value="20">20</option>
							<option value="21">21</option>
							<option value="22">22</option>
							<option value="23">23</option>
							<option value="24">24</option>
							<option value="25">25</option>
							<option value="26">26</option>
							<option value="27">27</option>
							<option value="28">28</option>
							<option value="29">29</option>
							<option value="30">30</option>
							<option value="31">31</option>
						</select>
					</div>
				</div>
				<span class="error_next_box"></span>
			</div>
			<div class="phone_Title">
				<h6>
					<label for="phone">휴대폰 번호</label>
				</h6>
			</div>

			<div class="phone_area" style="height: 30px; width: 70px;">
				<select id="phone_area">
					<option>010</option>
					<option value="016">016</option>
					<option value="013">013</option>
					<option value="02">02</option>
				</select>
			</div>
			<div class="phone_number">
				<input type="tel" id="phone_num" class="int" maxlength="8"
					style="height: 30px; width: 165px;">

			</div>
			<div class="address">
				<h6>
					<label for="address">주소 입력</label>
				</h6>
				<div class="address_input">
					<input type="text" id="address" class="int" maxlength="50"
						style="height: 30px; width: 225px;">
				</div>
				<div class="address_inputbutton">
					<button type="button" onclick="alert('주소 검색 구현 부분.')">주소
						검색</button>
				</div>
				<div class="address_input2">
					<input type="text" id="address2" class="int" maxlength="50"
						style="height: 30px; width: 225px;"> <input type="text"
						id="address3" class="int" maxlength="50" placeholder="상세주소 입력"
						style="height: 30px; width: 225px;">
				</div>
				<span class="error_next_box"></span>
			</div>

			<div class="joinemail_Title">
				<h6>
					<label for="joinemail_Title">이메일</label>
				</h6>
			</div>

			<div class="joinemail_Input">
				<input type="text" id="join_email" class="int" maxlength="20"
					style="height: 30px; width: 225px;">
			</div>

			<div class="joinemail_Inputbutton">
				<input type="button" id="join_code" value="인증코드 받기">
			</div>

			<div class="joincode_Title">
				<h6>
					<label for="joincode_Title">인증코드</label>
				</h6>
			</div>
			<div class="joincode_Input">
				<input type="text" id="join_code" class="int" maxlength="20"
					style="height: 30px; width: 225px;">
			</div>

			<div class="choice_Titleline" style="width: 650px;">
				<hr>
			</div>

			<div class="choice_Title">
				<h5 class="choice_Title">선택사항</h5>
			</div>

			<div class="sex_Title">
				<h6>
					<label for="sex_Title">성별</label>
				</h6>
			</div>
			<div class="sex_input">
				<input type="radio" name="female" value="여성">여성 &nbsp; <input
					type="radio" name="male" value="남성">남성
			</div>

			<div class="skintype_Title">
				<h6>
					<label for="skintype_Title">피부 타입</label>
				</h6>
			</div>
			<div class="skintype_Input">
				<input type="radio" name="dryskin" value="건성">건성 &nbsp; <input
					type="radio" name="normalskin" value="중성">중성 &nbsp; <input
					type="radio" name="oilyskin" value="지성">지성 &nbsp; <input
					type="radio" name="combinationskin" value="복합성">복합성 &nbsp;
				<input type="radio" name="sensitiveskin" value="민감성">민감성
				&nbsp; <input type="radio" name="trouble" value="트러블">트러블
				&nbsp; <input type="radio" name="atopy" value="아토피">아토피
				&nbsp; <input type="radio" name="etc" value="기타">기타
			</div>

			<div class="skinworry_Title">
				<h6>
					<label for="skinworry_Title">피부 고민</label>
				</h6>
			</div>
			<div class="skinworry_Input">
				<input type="checkbox" name="wrinkles" value="주름">주름 &nbsp;
				<input type="checkbox" name="pimple" value="여드름">여드름 &nbsp;
				<input type="checkbox" name="sebum&pores" value="피지&모공">피지&모공
				&nbsp; <input type="checkbox" name="no_moisturizing" value="수분부족">수분부족
				&nbsp; <input type="checkbox" name="darkcircles" value="다크써클">다크써클
				&nbsp; <input type="checkbox" name="corneous" value="각질">각질
				&nbsp; <input type="checkbox" name="etc" value="기타">기타
				&nbsp;
			</div>

			<div class="join_out">
				<button type="button" class="join_out_btn"
					onclick="location.href='mypage_infomation'">회원탈퇴</button>
			</div>
		</div>
	</div>
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />


	<%@ include file="./footer.jsp"%>
</body>

</html>