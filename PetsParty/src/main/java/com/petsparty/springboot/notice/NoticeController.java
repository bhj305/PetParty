package com.petsparty.springboot.notice;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.petsparty.springboot.utils.PagingUtil;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class NoticeController {
	
	@Autowired
	INoticeService dao;
	
	@GetMapping("/notice")
	public String notice(HttpServletRequest req, Model model, NoticeDTO DTO)
	{
		int totalCount = dao.getNoticeTotalCount(DTO);
		int pageSize = 5;
		int blockPage = 2;
		int pageNum = (req.getParameter("pageNum") == null || req.getParameter("pageNum").equals("")) 
			? 1 : Integer.parseInt(req.getParameter("pageNum"));
		int start = (pageNum - 1) * pageSize + 1;
		int end = pageNum * pageSize;
		DTO.setStart(start);
		DTO.setEnd(end);
		
		Map<String, Object> maps = new HashMap<String, Object>();
		maps.put("totalCount", totalCount);
		maps.put("pageSize", pageSize);
		maps.put("pageNum", pageNum);
		model.addAttribute("maps", maps);
		
		ArrayList<NoticeDTO> notices = dao.selectAllNotice(DTO);
		model.addAttribute("notices", notices);
		
		String pagingImg =
				PagingUtil.pagingImg(totalCount, pageSize, 
					blockPage, pageNum,
					req.getContextPath()+"/notice?");
			model.addAttribute("pagingImg", pagingImg);
		
		
		return "noticeBoard/noticeMain";
	}
	
	@GetMapping("/noticeWrite")
	public String communityWrite() {
		return "noticeBoard/noticeWrite";
	}
	
	@PostMapping("/noticeProc")
	public String noticeProc(HttpServletRequest req, Model model, NoticeDTO DTO) {
		model.addAttribute("title", req.getParameter("title"));
		model.addAttribute("writer", req.getParameter("writer"));
		model.addAttribute("content", req.getParameter("content"));
		model.addAttribute("ofile", req.getParameter("ofile"));
		
		System.out.println("writer: " + req.getParameter("writer"));
		System.out.println("content: " + req.getParameter("content"));
		
		dao.insertNotice(DTO);
		
		
		return "redirect:notice";
	}
	
	@GetMapping("noticeView")
	public String noticeView(NoticeDTO DTO, Model model) {
//		select 로 가져오기
		DTO = dao.selectedNotice(DTO);
		dao.incresingViewCount(DTO);
		model.addAttribute("board", DTO);
//		
//		조회수 증가 1 시켜주기 (UPDATE)
		
		return "noticeBoard/noticeView";
	}
}
