package com.borad.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.borad.dao.BoardDAO;
import com.borad.dto.BoardVO;



public class BoardUpdateAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		BoardVO bVo = new BoardVO();

		bVo.setNum(Integer.parseInt(request.getParameter("num")));
		bVo.setName(request.getParameter("name"));
		bVo.setPass(request.getParameter("pass"));
		bVo.setEmail(request.getParameter("email"));
		bVo.setTitle(request.getParameter("title"));
		bVo.setContent(request.getParameter("content"));

		BoardDAO bDao = BoardDAO.getInstance();

		// DAOのupdateBoardメソッドにパラメータにbVoを設定、実行
		bDao.updateBoard(bVo);

		// BoardListActionを利用、掲示板リスト画面に遷移
		new BoardListAction().execute(request, response);
	}

}
