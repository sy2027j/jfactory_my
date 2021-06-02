<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html>
<html lang="en">
<div class="container" style="margin-top:30px">
	
	 <c:if test="${ member != null }">
   <h3>MY PAGES</h3>
   <div>
      <hr style="size: 100%; background-color:#f5f5f5"><br/>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${member.mem_realname }님은 <strong>${member.mem_level } </strong>회원입니다.<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;다음등급까지 <strong>100,000 원</strong>부족 (다음 등급 산정일 2021.06.04)<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;당월포함 직전 6개월 구매금액 <strong>${member.mem_total_cash }</strong><br>
      <br/><hr style="size: 100%; background-color:#f5f5f5"></div>
   </c:if>
    </div>
   </div>