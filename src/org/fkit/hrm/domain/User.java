package org.fkit.hrm.domain;

import java.io.Serializable;
import java.util.Date;


/**
 * @Description:
 */
public class User implements Serializable {

	private static final long serialVersionUID = 1L;

	private Integer id;			// id
	private String username;	// 用戶名
	private String loginname;	// 登錄名
	private String password;	// 密碼
	private Integer userstatus;		// 狀態

	private Date createDate;	// 建檔日期
	// 無參數構造器
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	// setter和getter方法
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getLoginname() {
		return loginname;
	}
	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getUserstatus() {
		return userstatus;
	}
	public void setUserstatus(Integer userstatus) {
		this.userstatus = userstatus;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", loginname="
				+ loginname + ", password=" + password + ", userstatus=" + userstatus
				+ ", createDate=" + createDate + "]";
	}


}
