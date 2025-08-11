package com.petsparty.springboot.reserve;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IReserveService {
//	예약 Insert
	public int insertReservation(ReserveDTO DTO);
	ArrayList<ReserveDTO>  selectMyReservation(ReserveDTO DTO);
	
}
