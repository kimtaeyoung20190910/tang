package co.yedam.app.board;

import java.util.Date;

public class BoardDTO {
	private int no;
	private String poster;
	private String subject;
	private String contents;
	private Date lastpost;
	private int views;

	
	
	public BoardDTO(int no, String poster, String subject) {//Generate using fields 생성자
		this.no = no;
		this.poster = poster;
		this.subject = subject;
	}


	public BoardDTO() {
		// TODO Auto-generated constructor stub
	}


	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getPoster() {
		return poster;
	}

	public void setPoster(String poster) {
		this.poster = poster;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public Date getLastpost() {
		return lastpost;
	}

	public void setLastpost(Date lastpost) {
		this.lastpost = lastpost;
	}

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	@Override
	public String toString() {
		return "BoardDTO [no=" + no + ", poster=" + poster + ", subject=" + subject + ", contents=" + contents
				+ ", lastpost=" + lastpost + ", views=" + views + "]";
	}

}
