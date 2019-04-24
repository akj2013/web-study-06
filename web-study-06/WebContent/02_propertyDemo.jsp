<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바 빈 프로퍼티 값 얻기와 변경하기(getProperty, setProperty 액션 태그)</title>
</head>
<body>
<jsp:useBean id = "member" class = "com.saeyan.javabeans.MemberBean"/>
<hr>
◎ 자바 빈 객체 생성 후 저장된 정보 출력하기 <br><br>
이름 : <jsp:getProperty name = "member" property = "name" /> <br>
아이디 : <jsp:getProperty name = "member" property = "userid"/>
<hr>

◎ 정보 변경한 후 변경된 정보 출력하기 <br><br>
<jsp:setProperty name = "member" property = "name" value = "안광준"/>
<jsp:setProperty name = "member" property = "userid" value = "akj2019"/>
이름 : <jsp:getProperty name = "member" property = "name" /> <br>
아이디 : <jsp:getProperty name = "member" property = "userid" />
<% // 스크립트릿
/*
<<name>>
name 속성에는 반드시 <jsp:useBean. 태그에서 id로 설정한 값과 일치시켜야 합니다.
	     <jsp:useBean id = "member" class = "com.saeyan.javabeans.MemberBean"/>
                                                                  ↓
<jsp:setProperty name = "member" property = "name" value = "안광준"/>
                                                                  
<<property>>
<jsp:setProperty> 태그는 set으로 시작하는 setter를 호출하기 위한 액션 태그입니다. property 속성에 지정한 값에 의해서 호출하고자 하는 setter의 이름이 결정됩니다.
property 속성 값 "name"의 첫 글자를 대문자로 변경하여 set 다음에 기술하면 setName이 됩니다. 이렇게 조합된 setName()이 호출한 setter가 됩니다.
자바 코드와 매핑시켰을 때의 모습이 다음입니다.
<jsp:setProperty name = "member" property = "name" value = "안광준"/>
                                                                          ↓                                ↓
                                                 member.setName("안광준");

<<value>>
setter는 변경할 값을 전달해 주어야 합니다. 자바 코드에서는 매개 변수로 변경할 값을 전달하지만 <jsp:setProperty> 액션 태그에서는 새롭게 변경할 값을 value 속성에 기술합니다.
<jsp:setProperty name = "member" property = "name" value = "안광준"/>
                       																			   ↓
                  													member.setName("안광준");
*/
%>
</body>
</html>