
package com.borad.controller;

import com.borad.controller.action.Action;
import com.borad.controller.action.BoardCheckPassAction;
import com.borad.controller.action.BoardCheckPassFormAction;
import com.borad.controller.action.BoardDeleteAction;
import com.borad.controller.action.BoardListAction;
import com.borad.controller.action.BoardUpdateAction;
import com.borad.controller.action.BoardUpdateFormAction;
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
		} else if (command.equals("board_write_form")) {
			action = new BoardWriteFormAction();
		} else if (command.equals("board_write")) {
			action = new BoardWriteAction();
		} else if (command.equals("board_view")) {
			action = new BoardViewAction();
		} else if (command.equals("board_check_pass_form")) {
			action = new BoardCheckPassFormAction();
		} else if (command.equals("board_check_pass")) {
			action = new BoardCheckPassAction();
		} else if (command.equals("board_update_form")) {
			action = new BoardUpdateFormAction();
		} else if (command.equals("board_update")) {
			action = new BoardUpdateAction();
		} else if (command.equals("board_delete")) {
			action = new BoardDeleteAction();
		}

		return action;
	}
}