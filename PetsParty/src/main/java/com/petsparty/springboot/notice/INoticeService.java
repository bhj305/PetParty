package com.petsparty.springboot.notice;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface INoticeService {
	public int getNoticeTotalCount(NoticeDTO DTO);
	ArrayList<NoticeDTO> selectAllNotice(NoticeDTO DTO);
	public int insertNotice(NoticeDTO DTO);
	public NoticeDTO selectedNotice(NoticeDTO DTO);
	public int incresingViewCount(NoticeDTO DTO);
}
