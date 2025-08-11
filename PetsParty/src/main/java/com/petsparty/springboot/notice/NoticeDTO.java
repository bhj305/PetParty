package com.petsparty.springboot.notice;


import lombok.Data;

@Data
public class NoticeDTO {
	private int board_id;
	private int view_count;
	private String category;
	private String title;
	private String writer;
	private String content;
	private String ofile;
	private String sfile;
	private java.sql.Date created_date;
	
	private int start;
	private int end;
	
}
