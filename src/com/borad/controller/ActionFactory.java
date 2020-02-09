
package com.borad.controller;

import com.borad.controller.action.Action;
import com.borad.controller.action.BoardListAction;
import com.borad.controller.action.BoardViewAction;
import com.borad.controller.action.BoardWriteAction;
import com.borad.controller.action.BoardWriteFormAction;

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
		} else if(command.equals("board_write_form")) {
			action = new BoardWriteFormAction();
		} else if (command.equals("board_write")) {
			action = new BoardWriteAction();
		} else if (command.equals("board_view")) {
			action = new BoardViewAction();
		}

		return action;
	}
}