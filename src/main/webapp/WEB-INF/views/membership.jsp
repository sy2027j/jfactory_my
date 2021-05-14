<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<body>
   <h1>등급별 멤버십 혜택 안내</h1>
   <div class="membership_table container">
      <table class="table" id="orderdetail_table">

         <tr class="membership_name" style="width: 300px;">
            <td colspan="2" align="center">멤버십 등급 기준</td>
            <td>실버</th>
            <td>골드</th>
            <td>다이아</th>
         </tr>
         
         <tr class="membership_Benefit1" style="width: 300px;">
         <td colspan="3" align="center">혜택</th>
         <td colspan="3" align="center">5만원 이상 5천원 할인</td>
         <td colspan="2" align="center">5만원 이상 5천원 할인</td>
         <td>5만원 이상 5천원 할인</td>
         </tr>
         
         <tr class="membership_Benefit2" style="width: 300px;">
         <td colspan="2" align="center">3만원 이상 3천원 할인</td>
         <td>3만원 이상 3천원 할인</td>
         </tr>
         
         <tr class="membership_Benefit3" style="width: 300px;">
         <td>무료 배송 쿠폰 2장</td>
         </tr>
         
         <tr class="membership_data" style="width: 300px;">
         <td>5만원 이상</td>
         <td>10만원 이상</td>
         <td>15만원 이상</td>
         </tr>

      </table>
      </div>
      <%@ include file="./footer.jsp"%>
</body>