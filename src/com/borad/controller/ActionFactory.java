package com.borad.controller;

import com.borad.controller.action.Action;
import com.borad.controller.action.BoardListAction;

public class ActionFactory {

	// 一つのinstanceを生成するSingleToneパータンを使用
	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
		super();
	}

	public static ActionFactory getInstance() {
		return instance;
	}
		// パラメータcommandによってcom/board/controller/actionで該当のactionを実行
		// actionをreturnする
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory :" + command);
		if (command.equals("board_list")) {
			action = new BoardListAction();
		}

		return action;
	}
}