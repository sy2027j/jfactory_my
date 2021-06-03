<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html>
<html lang="en">
<div class="col-sm-12" style="margin-top:30px;">
   
    <c:if test="${ member != null }">
   <div class="container">
		<div class="row" >
		    <div class="col-sm-2">
		   <h3>MY PAGES</h3>
		   </div>
		   </div>
		   </div>
   			<div class="col-sm-12" style="background-color:#e6e6fa" >
      			  <div class="container">
		    <div class="col-sm-10">
			      <hr style="size: 100%; background-color:#f5f5f5"><br/>
			      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${member.mem_realname }님은 <strong>${member.mem_level }&nbsp;</strong>회원입니다.<br>
			      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;다음등급까지 <strong>100,000 원</strong>부족 (다음 등급 산정일 2021.06.04)<br>
			      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;당월포함 직전 6개월 구매금액 <strong>${member.mem_total_cash }</strong><br>
			      <br/><hr>
				</div>
				</div>
            </div>
   </c:if>
    </div>
   </div>
   
   