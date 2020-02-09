package com.borad.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.borad.dao.BoardDAO;



public class BoardDeleteAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String num = request.getParameter("num");

		BoardDAO bDao = BoardDAO.getInstance();
		bDao.deleteBoard(num);

		// BoardListActionを利用、掲示板リスト画面に遷移
		new BoardListAction().execute(request, response);
	}

}
