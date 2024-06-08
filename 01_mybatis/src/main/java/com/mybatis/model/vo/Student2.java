package com.mybatis.model.vo;

import java.sql.Date;

public class Student2 {
	private int student_no;
	private String student_name;
	private String student_pnum;
	private String student_mail;
	private String string_address;
	private Date reg_date;

	public Student2() {
		// TODO Auto-generated constructor stub
	}

	public Student2(int student_no, String student_name, String student_pnum, String student_mail,
			String string_address, Date reg_date) {
		super();
		this.student_no = student_no;
		this.student_name = student_name;
		this.student_pnum = student_pnum;
		this.student_mail = student_mail;
		this.string_address = string_address;
		this.reg_date = reg_date;
	}

	public int getStudent_no() {
		return student_no;
	}

	public void setStudent_no(int student_no) {
		this.student_no = student_no;
	}

	public String getStudent_name() {
		return student_name;
	}

	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}

	public String getStudent_pnum() {
		return student_pnum;
	}

	public void setStudent_pnum(String student_pnum) {
		this.student_pnum = student_pnum;
	}

	public String getStudent_mail() {
		return student_mail;
	}

	public void setStudent_mail(String student_mail) {
		this.student_mail = student_mail;
	}

	public String getString_address() {
		return string_address;
	}

	public void setString_address(String string_address) {
		this.string_address = string_address;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	@Override
	public String toString() {
		return "Student2 [student_no=" + student_no + ", student_name=" + student_name + ", student_pnum="
				+ student_pnum + ", student_mail=" + student_mail + ", string_address=" + string_address + ", reg_date="
				+ reg_date + "]";
	}
	
	
	
	
	
}
