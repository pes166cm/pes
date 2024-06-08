package com.mybatis.model.vo;

import java.util.Date;

public class Student {
	private int studentNO;
	private String studentName;
	private String studentPnum;
	private String studentMail;
	private String studentAddress;
	private Date enrllDate;
	
	
	//ctrl + space
	public Student() {}
	
	//alt + a + g + enter
	public Student(int studentNO, String studentName, String studentPnum, String studentMail, String studentAddress,
			Date enrllDate) {
		super();
		this.studentNO = studentNO;
		this.studentName = studentName;
		this.studentPnum = studentPnum;
		this.studentMail = studentMail;
		this.studentAddress = studentAddress;
		this.enrllDate = enrllDate;
	}

	//alt + s + g + eneter
	public int getStudentNO() {
		return studentNO;
	}

	public void setStudentNO(int studentNO) {
		this.studentNO = studentNO;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getStudentPnum() {
		return studentPnum;
	}

	public void setStudentPnum(String studentPnum) {
		this.studentPnum = studentPnum;
	}

	public String getStudentMail() {
		return studentMail;
	}

	public void setStudentMail(String studentMail) {
		this.studentMail = studentMail;
	}

	public String getStudentAddress() {
		return studentAddress;
	}

	public void setStudentAddress(String studentAddress) {
		this.studentAddress = studentAddress;
	}

	public Date getEnrllDate() {
		return enrllDate;
	}

	public void setEnrllDate(Date enrllDate) {
		this.enrllDate = enrllDate;
	}

	//alt + s + s + s 
	//toString은 
	@Override
	public String toString() {
		return "Student [studentNO=" + studentNO + ", studentName=" + studentName + ", studentPnum=" + studentPnum
				+ ", studentMail=" + studentMail + ", studentAddress=" + studentAddress + ", enrllDate=" + enrllDate + "]";
	}
	
}
