package kosta.mapper;

import java.util.List;
import java.util.Map;

import kosta.model.Board;
import kosta.model.Reply;
import kosta.model.Search;

public interface BoardMapper {
	int insertBoard(Board board);
	List<Board> listBoard();
	Board detailBoard(int seq);
	int updateBoard(Board board);
	
	int insertReply(Reply reply);
	List<Reply> listReply(int seq);
}
