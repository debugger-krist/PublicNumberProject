package com.muc.pnp.entity;

import org.springframework.stereotype.Component;

/**
 * 用户实体类
 * 
 *
 */
@Component
public class User {
	private Long id;//用户id，设置自增
	private String username;//用户名，登录名
	private String password;//登录密码
	private String Repassword;//登录密码
	private String Email;//电子邮箱

	public String getRepassword() {
		return Repassword;
	}

	public void setRepassword(String repassword) {
		Repassword = repassword;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
