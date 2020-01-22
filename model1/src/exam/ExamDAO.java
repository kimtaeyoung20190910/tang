package exam;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class ExamDAO{
	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	DataSource ds; // 커넥션 풀 사용을 위한 데이터연결 생성 객체

	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@192.168.111.130:1521:ORCL";
	private String user = "hr";
	private String password = "hr";
	
	public ExamDAO() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void close() {
		try {
			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// 추가
	public int insert(ExamDTO dto) {
		int r = 0;
		try {
			String sql = "insert into exem(exam_no, exam_nm, quest_cnt, exam_time, quest_group, exam_desc, exam_type)"
					+ " values((select max(exam_no)+1 from exam),?,?, ?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getExam_nm());
			psmt.setInt(2, dto.getQuest_cnt());
			psmt.setString(3, dto.getQuest_group());
			psmt.setString(4, dto.getExam_desc());
			psmt.setString(5, dto.getExam_type());
			r = psmt.executeUpdate();
		} catch (Exception e) {

		} finally {
			close();
		}
		return r;
	}

	// 수정
	public int update(ExamDTO dto) {
		int r = 0;
		try {
			String sql = "update exam set exam_nm=?, exam_desc=? " + "where exam_no=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getExam_nm());
			psmt.setString(2, dto.getExam_desc());
			psmt.setInt(3, dto.getExam_no());
			r = psmt.executeUpdate();
		} catch (Exception e) {

		} finally {
			close();
		}
		return r;
	}

	// 삭제
	public int delete(ExamDTO dto) {
		int r = 0;
		try {
			String sql = "delete exam " + "where exam_no=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getExam_nm());
			psmt.setString(2, dto.getExam_desc());
			psmt.setInt(3, dto.getExam_no());
			r = psmt.executeUpdate();
		} catch (Exception e) {

		} finally {
			close();
		}
		return r;
	}

	// 단건조회
	public ExamDTO selectone(int exam_no) {
		ExamDTO dto = new ExamDTO();
		try {
			String sql = "select * from board where no=? ";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, exam_no);
			rs = psmt.executeQuery(); // 실행
			if (rs.next()) { // 결과 옮겨담기
				dto.setExam_no(rs.getInt("exam_no"));
				dto.setExam_nm(rs.getString("exam_nm"));
				dto.setQuest_cnt(rs.getInt("quest_cnt"));
				dto.setExam_time(rs.getInt("exam_time"));
				dto.setQuest_group(rs.getString("quest_group"));
				dto.setExam_desc(rs.getString("exam_desc"));
				dto.setExam_type(rs.getString("exam_type"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;

	}

	// 목록
	public List<ExamDTO> selectList() {
		List<ExamDTO> list = new ArrayList<ExamDTO>();
		// 1. DB연결
		try {
			// 2. 쿼리실행
			String sql = "select * from exam order by exam_no desc";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery(sql);
			// 3. 결과저장
			while (rs.next()) {
				ExamDTO dto = new ExamDTO();
				dto.setExam_no(rs.getInt("exam_no"));
				dto.setExam_nm(rs.getString("exam_nm"));
				dto.setQuest_cnt(rs.getInt("quest_cnt"));
				dto.setExam_time(rs.getInt("exam_time"));
				dto.setQuest_group(rs.getString("quest_group"));
				dto.setExam_desc(rs.getString("exam_desc"));
				dto.setExam_type(rs.getString("exam_type"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 4. 연결해제
			close();
		}
		return list;
	}
}
