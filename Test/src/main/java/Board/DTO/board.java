package Board.DTO;

import java.io.Serializable;

public class board implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Integer boardNo;
	private String title; 
	private String writer;
	private String content;
	private String regDate;
	private String updDate;
	private String file;
	
	
	// 기본 생성자
	public board() {
		
	}


	
	// getter, setter
	public Integer getBoardNo() {
		return boardNo;
	}


	public void setBoardNo(Integer boardNo) {
		this.boardNo = boardNo;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getWriter() {
		return writer;
	}


	public void setWriter(String writer) {
		this.writer = writer;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getRegDate() {
		return regDate;
	}


	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}


	public String getUpdDate() {
		return updDate;
	}


	public void setUpdDate(String updDate) {
		this.updDate = updDate;
	}


	public String getFile() {
		return file;
	}


	public void setFile(String file) {
		this.file = file;
	}
	
	
	
	
	
	

}
