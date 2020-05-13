function addMenuItem() {
	var menu = document.getElementById("menu");
	var item = document.getElementById("new_item").value;
	if (item != "") {
		menu.options.add(new Option(item));
	}
}
function removeCurrentItem() {
	var menu = document.getElementById("menu");
	if (menu.options.length > 0) {
		menu.remove(menu.selectedIndex);
	}
}