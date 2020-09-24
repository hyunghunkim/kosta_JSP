package kosta.mapper;

import java.util.List;

import kosta.bean.Board;
import kosta.bean.Search;


public interface BoardMapper {
	List<Board> listBoard(Search search);
	Board detailBoard(int seq);
	int insertBoard(Board board);
	int updateBoard(Board board);
	int deleteBoard(int seq);
}