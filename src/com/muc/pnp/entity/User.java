package com.muc.pnp.entity;

import org.springframework.stereotype.Component;

/**
 * �û�ʵ����
 * 
 *
 */
@Component
public class User {
	private Long id;//�û�id����������
	private String username;//�û�������¼��
	private String password;//��¼����
	private String Repassword;//��¼����
	private String Email;//��������

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
