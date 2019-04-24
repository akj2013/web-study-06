<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바 빈 객체 생성하기(UseBean 액션 태그)</title>
</head>
<body>

<jsp:useBean id = "member" class = "com.saeyan.javabeans.MemberBean"/>
<!-- 
자바 언어에서와 마찬가지로 JSP에서 자바 빈 객체를 생성하기 위해서는 클래스를 지정해야 합니다. 
class 다음에는 자바 빈 클래스 이름을 기술합니다. 특정 패키지에 존재하는 클래스일 경우에는 패키지 이름까지 기술합니다.
class 속성 값은 자바에서 객체를 생성할 때 기술한 클래스 이름과 매핑됩니다.

com.saeyan.javabeans.MemberBean member = new com.saeyan.javabeans.MemberBeans();
pageContext.setAttribute("member", member);

가 액션 태그로 매핑된다.
scope 값은 default 가 page이다.
 -->


자바 빈 객체 생성 후 저장된 정보 출력하기<br><br>
이름 : <%= member.getName() %> <br>
아이디 : <%= member.getUserid() %>
<hr>

정보 변경한 후 변경된 정보 출력하기 <br><br>
<% //스크립트릿
member.setName("안광준");
member.setUserid("akj2019");
%>
이름 : <%= member.getName() %> <br>
아이디 : <%= member.getUserid() %>
</body>
</html>