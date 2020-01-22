package quest;

import java.util.ArrayList;
import java.util.List;

import common.DAO;



public class QuestDAO extends DAO {
	//추가
		public int insert(QuestDTO dto) {
			int r = 0;
			try {
				String sql="insert into quest(quest_no,quest_content,quest_type,answer1,answer2,answer3,answer4,right_answer,explain)"
							+ " values((select max(quest_no)+1 from exam),?,?,?,?,?,?,?,?)";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, dto.getQuest_content());
				psmt.setString(2, dto.getQuest_type());
				psmt.setString(3, dto.getAnswer1());
				psmt.setString(4, dto.getAnswer2());
				psmt.setString(5, dto.getAnswer3());
				psmt.setString(6, dto.getAnswer4());
				psmt.setString(7, dto.getRight_answer());
				psmt.setString(8, dto.getExplain());
				r = psmt.executeUpdate();
			} catch (Exception e) {
				
			}finally {
				close();
			}
			return r;
		}
		
		//수정
		public int update(QuestDTO dto) {
			int r = 0;
			try {
				String sql="update quest set quest_type=?, quest_content=? "
							+ "where quest_no=?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, dto.getQuest_type());
				psmt.setString(2, dto.getQuest_content());
				psmt.setInt(3, dto.getQuest_no());
				r = psmt.executeUpdate();
			} catch (Exception e) {
				
			}finally {
				close();
			}
			return r;
		}
		//삭제
		public int delete(QuestDTO dto) {
			int r = 0;
			try {
				String sql="delete quest "
							+ "where quest_no=?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, dto.getQuest_type());
				psmt.setString(2, dto.getQuest_content());
				psmt.setInt(3, dto.getQuest_no());
				r = psmt.executeUpdate();
			} catch (Exception e) {
				
			}finally {
				close();
			}
			return r;
		}
		//단건조회
		public QuestDTO selectone(int quest_no) {
			QuestDTO dto = new QuestDTO();
			try {
				String sql = "select * from quest where quest_no=? ";
				psmt = conn.prepareStatement(sql);
				psmt.setInt(1, quest_no);
				rs = psmt.executeQuery(); // 실행
				if (rs.next()) { // 결과 옮겨담기
					dto.setQuest_no(rs.getInt("quest_no"));
					dto.setQuest_content(rs.getString("quest_content"));
					dto.setQuest_type(rs.getString("quest_type"));
					dto.setAnswer1(rs.getString("answer1"));
					dto.setAnswer2(rs.getString("answer2"));
					dto.setAnswer3(rs.getString("answer3"));
					dto.setAnswer4(rs.getString("answer4"));
					dto.setRight_answer(rs.getString("right_answer"));
					dto.setExplain(rs.getString("explain"));
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return dto;

		}

		// 목록
		public List<QuestDTO> selectList() {
			List<QuestDTO> list = new ArrayList<QuestDTO>();
			// 1. DB연결
			try {
				// 2. 쿼리실행
				String sql = "select * from quest order by quest_no desc";
				psmt = conn.prepareStatement(sql);
				rs = psmt.executeQuery(sql);
				// 3. 결과저장
				while (rs.next()) {
					QuestDTO dto = new QuestDTO();
					dto.setQuest_no(rs.getInt("quest_no"));
					dto.setQuest_content(rs.getString("quest_content"));
					dto.setQuest_type(rs.getString("quest_type"));
					dto.setAnswer1(rs.getString("answer1"));
					dto.setAnswer2(rs.getString("answer2"));
					dto.setAnswer3(rs.getString("answer3"));
					dto.setAnswer4(rs.getString("answer4"));
					dto.setRight_answer(rs.getString("right_answer"));
					dto.setExplain(rs.getString("explain"));
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
