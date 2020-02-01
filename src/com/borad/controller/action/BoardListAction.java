package com.borad.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.borad.dao.BoardDAO;
import com.borad.dto.BoardVO;

// DBから掲示板リストのすべての投稿物の情報を持ってくる
public class BoardListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "board/boardList.jsp";

		BoardDAO bDAO = BoardDAO.getInstance();

		//　DAOですべての掲示板リストを持ってくるselectAllBoardsメソッドを実行、 boardListに格納
		List<BoardVO> boardList = bDAO.selectAllBoards();

		// requestにboardListを設定する
		request.setAttribute("boardList", boardList);

		//　該当のURLにforwardする
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}