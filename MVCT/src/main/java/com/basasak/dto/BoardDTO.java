package com.basasak.dto;

import java.sql.Timestamp;

//���󿡼� ���̺��� �ʵ庰�� ����, �����ͼ� ����� ����
public class BoardDTO {
	private int r_num;
	private String r_title;
	private String r_content;
	private Timestamp r_date;
	private int r_view;
	private int r_recommend;
	private String r_pw;
	private String m_id;
	
	public int getR_num() {
		return r_num;
	}
	public void setR_num(int r_num) {
		this.r_num = r_num;
	}
	public String getR_title() {
		return r_title;
	}
	public void setR_title(String r_title) {
		this.r_title = r_title;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public Timestamp getR_date() {
		return r_date;
	}
	public void setR_date(Timestamp r_date) {
		this.r_date = r_date;
	}
	public int getR_view() {
		return r_view;
	}
	public void setR_view(int r_view) {
		this.r_view = r_view;
	}
	public int getR_recommend() {
		return r_recommend;
	}
	public void setR_recommend(int r_recommend) {
		this.r_recommend = r_recommend;
	}
	public String getR_pw() {
		return r_pw;
	}
	public void setR_pw(String r_pw) {
		this.r_pw = r_pw;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	
	
	
/*	
	private int num; //�Խù� ��ȣ
	//���� ���̴� ����(�Է�)
	private String writer; //�ۼ���
	private String subject; //������
	private String email; //�̸��� 
	private String content; //�۳���
	private String passwd; //��ȣ(�۾���, �ۼ����Ҷ�, �ۻ���)
	//�߰�
	private Timestamp reg_date;
	private int readcount; //��ȸ��
	private String ip;//�ۼ����� ip�ּҸ� ���
	//��������, �����Խ���+3�� �߰�->�亯��
	private int ref; //�� �׷��ȣ(=�Խù���ȣ)
	private int re_step;//�亯���� ������ ����(=���� �׷��϶��� �亯�� ����)
	private int re_level;//�亯���� �亯�� ���� ����(depth)
	//private String file=>���ε�Ǵ� ������ ���� �߰�(�ڷ�Ǳ���)
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getRe_step() {
		return re_step;
	}
	public void setRe_step(int rs_step) {
		this.re_step = rs_step;
	}
	public int getRe_level() {
		return re_level;
	}
	public void setRe_level(int re_level) {
		this.re_level = re_level;
	}
*/	
}
