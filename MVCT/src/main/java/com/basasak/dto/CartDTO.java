package com.basasak.dto;

public class CartDTO {
	String sb_serial,m_id,c_serial,c_product;	
	int sb_count,sb_price,sb_point,c_price;
	public String getC_product() {
		return c_product;
	}
	public void setC_product(String c_product) {
		this.c_product = c_product;
	}
	public int getC_price() {
		return c_price;
	}
	public void setC_price(int c_price) {
		this.c_price = c_price;
	}
	public String getSb_serial() {
		return sb_serial;
	}
	public void setSb_serial(String sb_serial) {
		this.sb_serial = sb_serial;
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
	public int getSb_count() {
		return sb_count;
	}
	public void setSb_count(int sb_count) {
		this.sb_count = sb_count;
	}
	public int getSb_price() {
		return sb_price;
	}
	public void setSb_price(int sb_price) {
		this.sb_price = sb_price;
	}
	public int getSb_point() {
		return sb_point;
	}
	public void setSb_point(int sb_point) {
		this.sb_point = sb_point;
	}
}
