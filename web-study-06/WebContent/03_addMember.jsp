<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	// 스크립트릿
	request.setCharacterEncoding("UTF-8");
// 폼 양식에서 post 방식으로 전달되는 요청 파라미터 값에 대해 한글이 깨지지 않도록 한글 처리를 합니다.
%>
<jsp:useBean id="member" class="com.saeyan.javabeans.MemberBean" /> <!-- MemberBean 클래스로 member란 이름으로 객체를 생성합니다. -->
<jsp:setProperty name="member" property="*" />
<!-- 
액션 태그의 property 속성 값으로 "*"를 사용하여 손쉽게 요청 파라미터 값을 한꺼번에 자바 빈의 프로퍼티로 저장할 수 있습니다.
하지만 사용자가 폼 양식에 입력한 값을 자바 빈 객체에 한꺼번에 저장하기 위해서는 반드시 파라미터의 이름과 자바 빈의 프로퍼티 이름이 일치해야 한다는 조건을 만족해야 합니다.
만일 액션 태그를 사용하지 않는다면 위와 같이 한 줄로 간단하게 요청 파라미터 값을 한꺼번에 자바 빈의 프로퍼티에 저장하는 대신 여러 줄에 걸쳐서 코딩해야 합니다.
 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원의 정보 처리 페이지</title>
</head>
<body>
	<h2>입력 완료된 회원 정보</h2>
	<table>
		<tr>
			<td>이름                         </td>
			<td><jsp:getProperty name="member" property="name" /></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><jsp:getProperty name="member" property="userid" /></td>
		</tr>
		<tr>
			<td>별명</td>
			<td><jsp:getProperty name="member" property="nickname" /></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><jsp:getProperty name="member" property="pwd" /></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><jsp:getProperty name="member" property="email" /></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><jsp:getProperty name="member" property="phone" /></td>
		</tr>
		
	</table>
</body>
</html>