package com.finalproject.mobang.agent.dto;

public class AgentItemDto {

	private String name_it;
	private String price_it;
	
	public AgentItemDto() {}
	public AgentItemDto(String name_it, String price_it) {
		this.name_it = name_it;
		this.price_it = price_it;
	}
	public String getName_it() {
		return name_it;
	}
	public void setName_it(String name_it) {
		this.name_it = name_it;
	}
	public String getPrice_it() {
		return price_it;
	}
	public void setPrice_it(String price_it) {
		this.price_it = price_it;
	}
	
	
}
