/*
 * 자바 빈의 실행 단위인 클래스가 이클립스에 의해서 MemberBean.java란 파일 이름으로 자동 생성됩니다.
 * 자동 생성된 MemberBean.java 파일에는 회원 정보를 저장할 필드가 필요합니다.
 * 이 필드들은 데이터 은닉이라는 개념을 적용하여 직접 접근하지 못하도록 private 접근 제한자로 선언합니다.
 * 
 * <자바 빈 관련 액션 태그>
 * 1. <jsp:useBean> : 자바 빈을 생성한다.
 * 2. <jsp:getProperty> : 자바 빈에서 정보를 얻어온다.
 * 3. <jsp:setProperty> : 자바 빈에 정보를 저장한다.
 * 
 * <socpe 속성 값>
 * 1. page : 하나의 페이지를 처리할 때 사용되는 영역. (기본값)
 * 2. request : 요청을 처리할 때 사용되는 영역.
 * 3. session : 하나의 브라우저와 관련된 영역.
 * 4. application : 하나의 웹 애플리케이션과 관련된 영역.
 * 
 */
package com.saeyan.javabeans;

public class MemberBean {
	private String name;
	private String userid;
	private String nickname;
	private String pwd;
	private String email;
	private String phone;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
}
