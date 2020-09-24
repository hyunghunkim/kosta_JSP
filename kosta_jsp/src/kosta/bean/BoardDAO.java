package kosta.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {
	// singleton 디자인 패턴
	// 매번 객체를 생성하지 않고, 한 번만 객체 생성하고 난 뒤 새로운 연결이 있을 때도 생성된 객체를 계속 사용할 수 있다.
	private static BoardDAO dao = new BoardDAO();
	
	// DBCP방식(server.xml에 JNDI 방식으로 DataSource를 구해올 수 있도록 resource로 설정)으로 Connection 객체 구하기
	public Connection getConnection() {
		DataSource ds = null;
		
		try {
			// JNDI로 DataSource를 받아오기 위해 Context 객체를 사용한다.
			Context ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
			
			return ds.getConnection();	// DataSource에 있는 Connection 객체를 구해온다.
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	public static BoardDAO getInstance() {
		return dao;
	}
	
	// 사용자 정의 메소드들
	public Board detailBoard(int seq) {
		Connection conn = null;		// Connection 객체
		PreparedStatement pstmt = null;	// 홑따옴표와 쌍따옴표 걱정이 없는 statement 객체
		ResultSet rs = null;	// executeQuery()로 얻어온 결과값이 저장되는 ResultSet
		Board board = new Board();
		
		String sql = "select * from board where seq=?";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seq);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				board.setSeq(rs.getInt("seq"));
				board.setTitle(rs.getString("title"));
				board.setWriter(rs.getString("writer"));
				board.setContents(rs.getString("contents"));
				board.setRegdate(rs.getString("regdate"));
				board.setHitcount(rs.getInt("hitcount"));

			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return board;
	}
	
	public List<Board> listBoard() {
		Connection conn = null;		// Connection 객체
		PreparedStatement pstmt = null;	// 홑따옴표와 쌍따옴표 걱정이 없는 statement 객체
		ResultSet rs = null;	// executeQuery()로 얻어온 결과값이 저장되는 ResultSet
		List<Board> list = null;
		
		String sql = "select * from board order by seq desc";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();//조회
			
			list = new ArrayList<Board>();
			
			while(rs.next()) {
				Board board = new Board();
				board.setSeq(rs.getInt("seq"));
				board.setTitle(rs.getString("title"));
				board.setWriter(rs.getString("writer"));
				board.setContents(rs.getString("contents"));
				board.setRegdate(rs.getString("regdate"));
				board.setHitcount(rs.getInt("hitcount"));
				
				list.add(board);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public int insert(Board board) {
		//System.out.println(board);
		
		// 객체 선언
		Connection conn = null;		// DB Connection 객체
		PreparedStatement pstmt = null;	// 홑따옴표와 쌍따옴표 걱정이 없는 statement 객체

		// Connection에 사용할 파라미터 생성 및 초기화
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String user = "kosta202";
		String password = "1234";
		
		// SQL 관련
		String sql = "insert into board values(board_seq.nextval, ?, ?, ?, sysdate, 0)";
		int re = -1;
		
		try {
			// step 1 : JDBC 드라이버 로드
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			// step 2 : DB와 연결(Connection 객체)
			conn = DriverManager.getConnection(url, user, password);
			
			// step 3 : SQL문(Statement 객체)
			pstmt = conn.prepareStatement(sql);
			
				// sql의 ?, ?, ?의 값 초기화
				pstmt.setString(1, board.getTitle());
				pstmt.setString(2, board.getWriter());
				pstmt.setString(3, board.getContents());
				
				// DB에 질의문 전송
				re = pstmt.executeUpdate();	// executeUpdate()는 성공시킨 질의문의 결과 수를 int로 리턴
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return re;
		
	}
	
	
}
