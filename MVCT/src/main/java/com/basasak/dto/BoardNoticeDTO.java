package com.basasak.dto;

import java.sql.Timestamp;

//���󿡼� ���̺��� �ʵ庰�� ����, �����ͼ� ����� ����
public class BoardNoticeDTO {
	private int n_num;
	private String n_title;
	private String n_content;
	private Timestamp n_date;
	private int n_view;
	private String n_pw;
	private String a_id;
	
	public int getN_num() {
		return n_num;
	}
	public void setN_num(int n_num) {
		this.n_num = n_num;
	}
	public String getN_title() {
		return n_title;
	}
	public void setN_title(String n_title) {
		this.n_title = n_title;
	}
	public String getN_content() {
		return n_content;
	}
	public void setN_content(String n_content) {
		this.n_content = n_content;
	}
	public Timestamp getN_date() {
		return n_date;
	}
	public void setN_date(Timestamp n_date) {
		this.n_date = n_date;
	}
	public int getN_view() {
		return n_view;
	}
	public void setN_view(int n_view) {
		this.n_view = n_view;
	}
	public String getN_pw() {
		return n_pw;
	}
	public void setN_pw(String n_pw) {
		this.n_pw = n_pw;
	}
	public String getA_id() {
		return a_id;
	}
	public void setA_id(String a_id) {
		this.a_id = a_id;
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
