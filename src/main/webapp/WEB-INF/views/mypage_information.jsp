<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<%@ include file="./mypageHeader.jsp"%>
<!DOCTYPE html>
<html lang="en">
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-2">
				<ul class="nav nav-pills flex-column"
					style="background-color: #e6e6fa;">
					<li class="nav-item"><a
						style="color: black; text-decoration: none" class="nav-link"
						href="mypage_order">주문내역</a></li>
					<li class="nav-item"><a
						style="color: black; text-decoration: none" class="nav-link"
						href="mypage_view">최근 본 상품</a></li>
					<li class="nav-item"><a
						style="color: black; text-decoration: none" class="nav-link"
						href="mypage_review">내가 작성한 리뷰</a></li>
					<li class="nav-item"><a
						style="color: black; text-decoration: none" class="nav-link"
						href="mypage_ask">문의내역</a></li>
					<li class="nav-item"><a
						style="color: black; text-decoration: none" class="nav-link"
						href="mypage_coupon">보유쿠폰</a></li>
					<li class="nav-item"><a
						style="color: black; text-decoration: none" class="nav-link"
						href="mypage_information">회원정보수정</a></li>
				</ul>
				<hr class="d-sm-none">
			</div>
			<div class="col-sm-8">
				<div class="mb-4">
					<h3 class="contents"
						style="text-align: center; padding-top: 2%; padding-left: 10%;">회원
						정보 수정</h3>
					<div
						style="padding-top: 5%; padding-left: 10%; padding-right: 5%; padding-bottom: 5%;">
						<form id="mypage_information" name="mypage_information"
							method="post" action="mypage_information">
							<div class="myForm-group">
								<div class="form-group">
									<label for="MEMBER_ID">아이디 *</label>
									<div class="form-inline">
										<input type="text" class="form-control" id="mem_id"
											name="mem_id" placeholder="${member.mem_id }"
											value="${member.mem_id }" readonly="readonly"
											style="width: 410px"> &nbsp;
									</div>
								</div>

								<div class="form-group">
									<label for="MEMBER_NAME">이름 *</label> <input type="text"
										class="form-control" id="mem_realname" name="mem_realname"
										placeholder=" ${member.mem_realname }" readonly="readonly"
										value="${member.mem_realname }">
									<div id="name_check"></div>
								</div>

								<div class="form-group">
									<label for="member_zipcode">배송지 주소 *</label>
									<div class="form-inline">
										<input type="text" class="form-control" style="width: 100px;"
											name="mem_zipcode" id="mem_zipcode"
											placeholder="${member.mem_zipcode}"
											value="${member.mem_zipcode}" onfocus="this.blur()">
										&nbsp;
										<button class="btn btn-default" type="button" id="findAddrBtn"
											style="border-color: white; background-color: #e6e6fa; color: black;"
											onclick="findAddr();">우편번호 찾기</button>
									</div>
									<input type="text" class="form-control"
										style="margin-top: 5px;" name="mem_address1" id="mem_address1"
										placeholder="${member.mem_address1}"
										value="${member.mem_address1}" onfocus="this.blur()">
									<input type="text" class="form-control"
										style="margin-top: 5px;" name="mem_address2" id="mem_address2"
										placeholder="${member.mem_address2}"
										value="${member.mem_address2}">
									<div id="addr_check"></div>
								</div>
								<div class="form-group">
									<label for="MEMBER_BIRTH">생년월일 *</label>
									<div class="form-inline">
										<select class="form-control" style="width: 150px;"
											name="mem_birth_year" id="mem_birth_year"
											value="${member.mem_birth_year}">
											<option value="">${member.mem_birth_year}년</option>
											<c:forEach var="i" begin="1950" end="2005">
												<option value="${i }">${i }년</option>
											</c:forEach>
										</select> &nbsp;<select class="form-control" style="width: 120px;"
											name="mem_birth_month" id="mem_birth_month"
											value="${member.mem_birth_month}">
											<option value="">${member.mem_birth_month}월</option>
											<c:forEach var="i" begin="1" end="12">
												<option value="<c:if test="${i < 10}">0</c:if>${i }">${i }월</option>
											</c:forEach>
										</select> &nbsp;<select class="form-control" style="width: 120px;"
											name="mem_birth_day" id="mem_birth_day"
											value="${member.mem_birth_day}">
											<option value="">${member.mem_birth_day}일</option>
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
											<option value="${member.mem_phone}">0${member.mem_phone}</option>
											<option value="010">010</option>
											<option value="011">011</option>
											<option value="012">012</option>
											<option value="013">013</option>
										</select> &nbsp; - &nbsp; <input type="text" class="form-control"
											id="mem_phone1" name="mem_phone1" style="width: 150px"
											placeholder="${member.mem_phone1}"
											value="${member.mem_phone1}"> &nbsp; - &nbsp; <input
											type="text" class="form-control" id="mem_phone2"
											name="mem_phone2" style="width: 150px"
											placeholder="${member.mem_phone2}"
											value="${member.mem_phone2}"> <br />
									</div>
								</div>
								<div class="form-group">
									<label for="MEMBER_EMAIL">이메일 주소 *</label>
									<div class="form-inline">
										<input type="email" class="form-control" id="mem_email"
											name="mem_email" placeholder="${member.mem_email}"
											value="${member.mem_email}" style="width: 410px">
										&nbsp;
										<button type="button" class="btn btn-default"
											id="isCheck_Email" name="isCheck_Email"
											style="border-color: white; background-color: #e6e6fa; color: black;"
											onclick="Email_send();">인증</button>
										<input type="hidden" id="isEmailCheck" value="0">
									</div>
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
								<input type="hidden" name="mem_sex" id="mem_sex" value="2">
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
										type="button" class="btn" id="information_update_Btn"
										onclick="information_update();">회원정보 수정</button>
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
		<!-- Bootstrap core JavaScript -->
		<script src="resources/vendor/jquery/jquery.min.js"></script>
		<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		<script
			src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

		<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
		<script type="text/javascript"
			src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>

		<script type="text/javascript">
			var maxCount = 2;
			var count = 0;

			function CountChecked(field) {
				if (field.checked) {
					count += 1;
				} else {
					count -= 1;
				}

				if (count > maxCount) {
					alert("최대 2개까지만 선택가능합니다.");
					field.checked = false;
					count -= 1;
				}

				var checkBoxArr = [];

				$("input[name=mem_skintrouble]:checked").each(function(i) {
					checkBoxArr.push($(this).val());
					$("#mem_skintrouble1").attr("value", checkBoxArr[0]);
					$("#mem_skintrouble2").attr("value", checkBoxArr[1]);
				})

				//var obj_length = document.getElementsByName("mem_skintype1").length;

				//for (var i=0; i<obj_length; i++) {
				//if (document.getElementsByName("mem_skintype1")[i].checked == true) {
				//$("#mem_skintype").attr("value", document.getElementsByName("mem_skintype1")[i].value);
				//}}

			}
		</script>
		<script type="text/javascript">
			var key;

			function Email_send() {
				var mem_email2 = document.getElementById("mem_email");

				if (mem_email2.value == "") {
					alert("이메일을 입력하세요.");
					mem_email2.focus();
					return false;
				}

				var bool = true; //boolean 인듯

				if (bool) {

					$.ajax({
						url : "/ex/emailSend",
						type : "POST",
						dataType : "json",
						data : {
							"mem_email" : $("#mem_email").val()
						},
						success : function(data) {
							alert("이메일 발송.");
							key = data;
							bool = false;
						},
						error : function(request, status, error) {
							alert("code = " + request.status + " message = "
									+ request.responseText + " error = "
									+ error); // 실패 시 처리
						}
					});
				}
			}

			//인증코드 확인 부분
			//이메일 인증 버튼 -> 내용 변경
			function Email_chk() {

				//이메일 인증코드 입력한 부분을 userContent로 하고 인증코드 값(입력한 값)과 원래 보낸 키가 같으면 성공
				if ($("#emailAuth").val() !== "") {
					var userContent = $("#emailAuth").val();
					if (userContent == key) {

						alert("인증 성공!");
						$("#mem_email_cert").val("1") //성공하면 디비에 1로 입력
						$("#isCheck_Email").val("인증완료!");
						$("#isCheck_Email").attr("disabled", true);
						$("#emailAuth").attr("disabled", true);
					} else {
						$("#mem_email_cert").val("0");
						alert("인증 실패! 인증번호를 다시 입력해주세요!!");
						event.preventDefault();
					}
				}
			} //keyup
		</script>
		<script>
			//주소 찾기
			function findAddr() {
				new daum.Postcode(
						{
							oncomplete : function(data) {
								var addr = '';
								var extraAddr = '';

								if (data.userSelectedType === 'R') {
									addr = data.roadAddress;
								} else {
									addr = data.jibunAddress;
								}
								if (data.userSelectedType === 'R') {
									if (data.bname !== ''
											&& /[동|로|가]$/g.test(data.bname)) {
										extraAddr += data.bname;
									}
									if (data.buildingName !== ''
											&& data.apartment === 'Y') {
										extraAddr += (extraAddr !== '' ? ', '
												+ data.buildingName
												: data.buildingName);
									}
									if (extraAddr !== '') {
										extraAddr = ' (' + extraAddr + ')';
									}
								}
								document.getElementById('mem_zipcode').value = data.zonecode;
								document.getElementById("mem_address1").value = addr
										+ extraAddr;
								document.getElementById("mem_address2").focus();
							}
						}).open();
			}

			function information_update() {

				//성별
				var obj_length = document.getElementsByName("mem_sex1").length;

				for (var i = 0; i < obj_length; i++) {
					if (document.getElementsByName("mem_sex1")[i].checked == true) {
						$("#mem_sex")
								.attr(
										"value",
										document.getElementsByName("mem_sex1")[i].value);
					}
				}

				//피부타입
				var obj_length = document.getElementsByName("mem_skintype1").length;

				for (var i = 0; i < obj_length; i++) {
					if (document.getElementsByName("mem_skintype1")[i].checked == true) {
						$("#mem_skintype")
								.attr(
										"value",
										document
												.getElementsByName("mem_skintype1")[i].value);
					}
				}

				document.mypage_information.submit();
			}
		</script>
</body>

</html>


