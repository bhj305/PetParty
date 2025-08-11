package com.petsparty.springboot.reserve;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class ReserveController {
	
	@Autowired
	IReserveService dao;
	
	@GetMapping("/reserve")
	public String reserve()
	{
		return "reserve/reserveMain";
	}
	
	@PostMapping("/reserveProc")
	public String reserveProc(HttpServletRequest req, Model model, ReserveDTO DTO)
	{
		model.addAttribute("name", req.getParameter("name"));
		model.addAttribute("phone", req.getParameter("phone"));
		model.addAttribute("pet_name", req.getParameter("pet_name"));
		model.addAttribute("pet_type", req.getParameter("pet_type"));
		model.addAttribute("check_in_date", req.getParameter("check_in_date"));
		model.addAttribute("check_out_date", req.getParameter("check_out_date"));
		model.addAttribute("memo", req.getParameter("memo"));
		
		dao.insertReservation(DTO);
		
		return "redirect:reserve";
	}
	
	@GetMapping("/myReserve")
	public String myReserve()
	{
		return "reserve/searchMyReserve";
	}
	
	@PostMapping("/viewMyReservation")
	public String myReserveProc(HttpServletRequest req, Model model, ReserveDTO DTO)
	{
		model.addAttribute("name", req.getParameter("name"));
		model.addAttribute("phone", req.getParameter("phone"));
		
		ArrayList<ReserveDTO> myReservations = dao.selectMyReservation(DTO);
		model.addAttribute("myReservations", myReservations);
		
		return "reserve/viewMyReserve";
	}

}
