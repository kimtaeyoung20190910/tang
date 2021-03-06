package co.yedam.app.board;

import java.util.ArrayList;
import java.util.List;

public class BoardDAO extends DAO {

	//추가
	public int insert(BoardDTO dto) {
		int r = 0;
		try {
			String sql="insert into board(no,poster,subject,contents,lastpost,views)"
						+ " values((select nvl(max(no),0)+1 from board), ?,?,?, sysdate, 1)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getPoster());
			psmt.setString(2, dto.getSubject());
			psmt.setString(3, dto.getContents());
			r = psmt.executeUpdate();
		} catch (Exception e) {
			
		}finally {
			close();
		}
		return r;
	}
	
	//수정
	public int update(BoardDTO dto) {
		int r = 0;
		try {
			String sql="update board set subject=?, contents=? "
						+ "where no=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getSubject());
			psmt.setString(2, dto.getContents());
			psmt.setInt(3, dto.getNo());
			r = psmt.executeUpdate();
		} catch (Exception e) {
			
		}finally {
			close();
		}
		return r;
	}
	//삭제
	public int delete(BoardDTO dto) {
		int r = 0;
		try {
			String sql="delete board "
						+ "where no=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getSubject());
			psmt.setString(2, dto.getContents());
			psmt.setInt(3, dto.getNo());
			r = psmt.executeUpdate();
		} catch (Exception e) {
			
		}finally {
			close();
		}
		return r;
	}
	//단건조회
	public BoardDTO selectone(int no) {
		BoardDTO dto = new BoardDTO();
		try {
			String sql = "select * from board where no=? ";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, no);
			rs = psmt.executeQuery(); // 실행
			if (rs.next()) { // 결과 옮겨담기
				dto.setNo(rs.getInt("no"));
				//dto.setLastpost(rs.getDate("lastpost"));
				dto.setContents(rs.getString("Contents"));
				dto.setPoster(rs.getString("Poster"));
				dto.setViews(rs.getInt("VIEWS"));
				dto.setSubject(rs.getString("SUBJECT"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;

	}

	// 목록
	public List<BoardDTO> selectList() {
		List<BoardDTO> list = new ArrayList<BoardDTO>();
		// 1. DB연결
		try {
			// 2. 쿼리실행
			String sql = "select * from board order by no desc";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery(sql);
			// 3. 결과저장
			while (rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setNo(rs.getInt("no"));
				//dto.setLastpost(rs.getDate("lastpost"));
				dto.setContents(rs.getString("Contents"));
				dto.setPoster(rs.getString("Poster"));
				dto.setViews(rs.getInt("VIEWS"));
				dto.setSubject(rs.getString("SUBJECT"));
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
