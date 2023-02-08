package sth.project.web.board.dto;

import java.sql.Date;

public class BoardDTO {

	private int bnum;
	private String btitle;
	private String bcontent;
	private Date bdate;
	public int getBnum() {
		return bnum;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public Date getBdate() {
		return bdate;
	}
	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}
	@Override
	public String toString() {
		return "BoardDTO [bnum=" + bnum + ", btitle=" + btitle + ", bcontent=" + bcontent + ", bdate=" + bdate + "]";
	}
	
	
}
