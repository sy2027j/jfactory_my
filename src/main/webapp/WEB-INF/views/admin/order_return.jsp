<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>반품 조회</title>
    </head>
    <body>
    	<h1>반품 조회</h1>
    	
		<table class="table" >
			<STYLE TYPE="text/css">
				table {font-size: 150%;}
			</STYLE>
			    	<tr>
						<td>주문번호</td>
						<!-- <td>${mem_dto.memID}</td> -->
						<td>14987486</td>
					<tr>
					<tr>
						<td>주문자(아이디)</td>
						<td>임연희(dusgml***)</td>
					<tr>
		</table>
		
		<br>
		<h4>제목</h4>
		<br>
		<h4>내용</h4>
		<br>
		<h4>답변</h4>
		 <textarea rows="10" cols="50" id="gdsDes" name="gdsDes">${goods.gdsDes}</textarea>
		
		<br>
		<button type="submit" id="update_Btn">승인</button>
		<button type="submit" id="back_Btn">취소</button> 
		
    </body>
            