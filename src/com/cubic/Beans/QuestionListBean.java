package com.cubic.Beans;

public class QuestionListBean {
	private String quename;
	private String queans;
	private String queopt1;
	private String queopt2;
	private String queopt3;
	private String explanation;
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	private boolean isvalid;
	public boolean isIsvalid() {
		return isvalid;
	}
	public void setIsvalid(boolean isvalid) {
		this.isvalid = isvalid;
	}
	public String getQuename() {
		return quename;
	}
	public void setQuename(String quename) {
		this.quename = quename;
	}
	public String getQueans() {
		return queans;
	}
	public void setQueans(String queans) {
		this.queans = queans;
	}
	public String getQueopt1() {
		return queopt1;
	}
	public void setQueopt1(String queopt1) {
		this.queopt1 = queopt1;
	}
	public String getQueopt2() {
		return queopt2;
	}
	public void setQueopt2(String queopt2) {
		this.queopt2 = queopt2;
	}
	public String getQueopt3() {
		return queopt3;
	}
	public void setQueopt3(String queopt3) {
		this.queopt3 = queopt3;
	}
	public String getExplanation() {
		return explanation;
	}
	public void setExplanation(String explanation) {
		this.explanation = explanation;
	}
	
}
