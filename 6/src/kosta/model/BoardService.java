package kosta.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

public class BoardService {
	private static BoardService service = new BoardService();
	private static BoardDAO2 dao;
	
	public static BoardService getInstance() {
		dao = BoardDAO2.getInstance();
		return service;
	}
	
	public int insertBoardService(HttpServletRequest request)throws Exception{
		request.setCharacterEncoding("utf-8");
		
		Board board = new Board();
		board.setTitle(request.getParameter("title"));
		board.setWriter(request.getParameter("writer"));
		board.setContents(request.getParameter("contents"));
		
		return dao.insertBoard(board);
	}
	
	public List<Board> listBoardService()throws Exception{
		List<Board> list = dao.listBoard();
		
		return list;
	}
	
	public Board detailBoardService(int seq)throws Exception{
		return dao.detailBoard(seq);
	}
	
	public int updateBoardService(Board board)throws Exception{
		return dao.updateBoard(board);
	}
	
	public int insertReplyService(Reply reply)throws Exception{
		return dao.insertReply(reply);
	}
	
	public List<Reply> listReplyService(int seq)throws Exception{
		return dao.listReply(seq);
	}
	
}








