<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>회원 상세정보</title>
    </head>
    <body>
    	<h1>회원 상세정보</h1>
    	
		<table class="table" >
			<STYLE TYPE="text/css">
				table {font-size: 150%;}
			</STYLE>
			    	<tr>
						<td>ID</td>
						<!-- <td>${mem_dto.memID}</td> -->
						<td>AAAAA</td>
					<tr>
					<tr>
						<td>생년월일</td>
						<td>000907</td>
					<tr>
					<tr>
						<td>이름</td>
						<td>정유진</td>
					<tr>
					<tr>
						<td>등급</td>
						<td>다이아</td>
					<tr>
					<tr>
						<td>전화번호</td>
						<td>01094256393</td>
				
					<tr>
					<tr>
						<td>누적 주문 횟수</td>
						<td>150</td>
					<tr>
		</table>
		
		<br>
		<h2>최근 본 상품</h2>
		<br>
		<h2>주문한 상품</h2>
		<br>
		<h2>주문취소한 상품</h2>
		<br>
		<h2>반품한 상품</h2>
		<br>
		<h2>총 구매 금액</h2>
		<br>
		<h2>1:1 문의 내역</h2>
		<br>
		<h2>메모</h2>
			<textarea rows="5" cols="50" id="gdsDes" name="gdsDes">${goods.gdsDes}</textarea>
		<br>
		<button type="submit" id="update_Btn">완료</button>
		<button type="submit" id="back_Btn">취소</button> 
		
    </body>
            