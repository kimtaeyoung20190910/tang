package exam;

public class ExamDTO {
 private int exam_no;
 private String exam_nm;
 private int quest_cnt;
 private int exam_time;
 private String quest_group;
 private String exam_desc;
 private String exam_type;
 
 
public ExamDTO(int exam_no, String exam_nm, String exam_desc) {
	super();
	this.exam_no = exam_no;
	this.exam_nm = exam_nm;
	this.exam_desc = exam_desc;
}
public ExamDTO() {
}

public int getExam_no() {
	return exam_no;
}
public void setExam_no(int exam_no) {
	this.exam_no = exam_no;
}
public String getExam_nm() {
	return exam_nm;
}
public void setExam_nm(String exam_nm) {
	this.exam_nm = exam_nm;
}
public int getQuest_cnt() {
	return quest_cnt;
}
public void setQuest_cnt(int quest_cnt) {
	this.quest_cnt = quest_cnt;
}
public int getExam_time() {
	return exam_time;
}
public void setExam_time(int exam_time) {
	this.exam_time = exam_time;
}
public String getQuest_group() {
	return quest_group;
}
public void setQuest_group(String quest_group) {
	this.quest_group = quest_group;
}
public String getExam_desc() {
	return exam_desc;
}
public void setExam_desc(String exam_desc) {
	this.exam_desc = exam_desc;
}
public String getExam_type() {
	return exam_type;
}
public void setExam_type(String exam_type) {
	this.exam_type = exam_type;
}
}
