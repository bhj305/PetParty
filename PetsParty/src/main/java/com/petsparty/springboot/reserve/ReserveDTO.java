package com.petsparty.springboot.reserve;


import lombok.Data;

@Data
public class ReserveDTO {
	private String reservation_id;
	private String name;
	private String phone;
	private String pet_name;
	private String pet_type;
	private String memo;
	private java.sql.Date check_in_date;
	private java.sql.Date check_out_date;
	private java.sql.Date created_at;
}
