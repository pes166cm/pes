package com.web.board.dto;

import java.sql.Date;

public class Board {
	private int boardNo;
	private String boardTitle;
	private String boardWriter;
	private String boardContent;
	private String boardOriginalFilename;
	private String boardRenamedFilename;
	private Date boardDate;
	private int baordReadcount;
	
	public Board() {
		
	}
	
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardWriter() {
		return boardWriter;
	}
	public void setBoardWriter(String boardWriter) {
		this.boardWriter = boardWriter;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public String getBoardOriginalFilename() {
		return boardOriginalFilename;
	}
	public void setBoardOriginalFilename(String boardOriginalFilename) {
		this.boardOriginalFilename = boardOriginalFilename;
	}
	public String getBoardRenamedFilename() {
		return boardRenamedFilename;
	}
	public void setBoardRenamedFilename(String boardRenamedFilename) {
		this.boardRenamedFilename = boardRenamedFilename;
	}
	public Date getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}
	public int getBaordReadcount() {
		return baordReadcount;
	}
	public void setBaordReadcount(int baordReadcount) {
		this.baordReadcount = baordReadcount;
	}
	
	@Override
	public String toString() {
		return "Doarb [boardNo=" + boardNo + ", boardTitle=" + boardTitle + ", boardWriter=" + boardWriter
				+ ", boardContent=" + boardContent + ", boardOriginalFilename=" + boardOriginalFilename
				+ ", boardRenamedFilename=" + boardRenamedFilename + ", boardDate=" + boardDate + ", baordReadcount="
				+ baordReadcount + "]";
	}
	
	public Board(int boardNo, String boardTitle, String boardWriter, String boardContent, String boardOriginalFilename,
			String boardRenamedFilename, Date boardDate, int baordReadcount) {
		super();
		this.boardNo = boardNo;
		this.boardTitle = boardTitle;
		this.boardWriter = boardWriter;
		this.boardContent = boardContent;
		this.boardOriginalFilename = boardOriginalFilename;
		this.boardRenamedFilename = boardRenamedFilename;
		this.boardDate = boardDate;
		this.baordReadcount = baordReadcount;
	}
	
}
