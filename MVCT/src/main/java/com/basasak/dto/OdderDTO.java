package com.basasak.dto;

import java.sql.Date;

public class OdderDTO {
	private String o_num,o_product,o_state,o_addr,m_id,c_serial;
	private int o_price,o_point,o_count;
	public int getO_count() {
		return o_count;
	}
	public void setO_count(int o_count) {
		this.o_count = o_count;
	}
	private Date date;
	public String getO_num() {
		return o_num;
	}
	public void setO_num(String o_num) {
		this.o_num = o_num;
	}
	public String getO_product() {
		return o_product;
	}
	public void setO_product(String o_product) {
		this.o_product = o_product;
	}
	public String getO_state() {
		return o_state;
	}
	public void setO_state(String o_state) {
		this.o_state = o_state;
	}
	public String getO_addr() {
		return o_addr;
	}
	public void setO_addr(String o_addr) {
		this.o_addr = o_addr;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getC_serial() {
		return c_serial;
	}
	public void setC_serial(String c_serial) {
		this.c_serial = c_serial;
	}
	public int getO_price() {
		return o_price;
	}
	public void setO_price(int o_price) {
		this.o_price = o_price;
	}
	public int getO_point() {
		return o_point;
	}
	public void setO_point(int o_point) {
		this.o_point = o_point;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
}
