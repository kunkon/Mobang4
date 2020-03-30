package com.finalproject.mobang.agent.dto;

public class AgentPayDto {

	private String name_it;
	private String email;
	private String addr_pay;
	private String total_pay;
	
	public AgentPayDto() {
	}

	public AgentPayDto(String name_it, String email, String addr_pay, String total_pay) {
		this.name_it = name_it;
		this.email = email;
		this.addr_pay = addr_pay;
		this.total_pay = total_pay;
	}

	public String getName_it() {
		return name_it;
	}

	public void setName_it(String name_it) {
		this.name_it = name_it;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddr_pay() {
		return addr_pay;
	}

	public void setAddr_pay(String addr_pay) {
		this.addr_pay = addr_pay;
	}

	public String getTotal_pay() {
		return total_pay;
	}

	public void setTotal_pay(String total_pay) {
		this.total_pay = total_pay;
	}
	
	
}
