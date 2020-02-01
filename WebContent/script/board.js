
// 入力した情報の有効性を判断

function boardCheck(){
	if (document.frm.name.value.length == 0) {
		alert('お名前を入力してください');
		return false;
	}

	if (document.frm.pass.value.length == 0) {
		alert('パスワードを入力してください');
		return false;
	}

	if (document.frm.title.value.length == 0) {
		alert('タイトルを入力してください');
		return false;
	}

	return true;
}

function open_win(url, name) {
	window.open(url, name, "width=500, height=230");
}

function passCheck() {
	if (document.frm.pass.value.length == 0) {
		alert('パスワードを入力してください');
		return false;
	}
	return true;

}