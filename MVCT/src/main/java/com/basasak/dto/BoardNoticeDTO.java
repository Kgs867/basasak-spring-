package com.basasak.dto;

import java.sql.Timestamp;

//웹상에서 테이블의 필드별로 저장, 꺼내와서 출력할 목적
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
	private int num; //게시물 번호
	//눈에 보이는 상태(입력)
	private String writer; //작성자
	private String subject; //글제목
	private String email; //이메일 
	private String content; //글내용
	private String passwd; //암호(글쓰기, 글수정할때, 글삭제)
	//추가
	private Timestamp reg_date;
	private int readcount; //조회수
	private String ip;//작성자의 ip주소를 출력
	//공지사항, 자유게시판+3개 추가->답변형
	private int ref; //글 그룹번호(=게시물번호)
	private int re_step;//답변글의 순서를 지정(=같은 그룹일때의 답변글 순서)
	private int re_level;//답변글의 답변에 대한 깊이(depth)
	//private String file=>업로드되는 파일의 정보 추가(자료실까지)
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
