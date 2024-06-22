package com.mybatis.model.vo;

import java.sql.Date;

public class Board {
	private int board_no;
	private String board_title;
	private String board_writer;
	private String border_content;
	private String border_original_filename;
	private String border_renamed_filename;
	private Date border_date;
	private int border_readcount;
	
	public Board() {
		// TODO Auto-generated constructor stub
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_writer() {
		return board_writer;
	}

	public void setBoard_writer(String board_writer) {
		this.board_writer = board_writer;
	}

	public String getBorder_content() {
		return border_content;
	}

	public void setBorder_content(String border_content) {
		this.border_content = border_content;
	}

	public String getBorder_original_filename() {
		return border_original_filename;
	}

	public void setBorder_original_filename(String border_original_filename) {
		this.border_original_filename = border_original_filename;
	}

	public String getBorder_renamed_filename() {
		return border_renamed_filename;
	}

	public void setBorder_renamed_filename(String border_renamed_filename) {
		this.border_renamed_filename = border_renamed_filename;
	}

	public Date getBorder_date() {
		return border_date;
	}

	public void setBorder_date(Date border_date) {
		this.border_date = border_date;
	}

	public int getBorder_readcount() {
		return border_readcount;
	}

	public void setBorder_readcount(int border_readcount) {
		this.border_readcount = border_readcount;
	}

	public Board(int board_no, String board_title, String board_writer, String border_content,
			String border_original_filename, String border_renamed_filename, Date border_date, int border_readcount) {
		super();
		this.board_no = board_no;
		this.board_title = board_title;
		this.board_writer = board_writer;
		this.border_content = border_content;
		this.border_original_filename = border_original_filename;
		this.border_renamed_filename = border_renamed_filename;
		this.border_date = border_date;
		this.border_readcount = border_readcount;
	}

	@Override
	public String toString() {
		return "Board [board_no=" + board_no + ", board_title=" + board_title + ", board_writer=" + board_writer
				+ ", border_content=" + border_content + ", border_original_filename=" + border_original_filename
				+ ", border_renamed_filename=" + border_renamed_filename + ", border_date=" + border_date
				+ ", border_readcount=" + border_readcount + "]";
	}

	
	
}
