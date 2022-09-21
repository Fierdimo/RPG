if(mainPlayer.status != state.casting || mainPlayer.status != state.running_script + state.casting){
	global.doubleClick = false
	global.search_origin = false;
	global.found_origin = false;
	global.shape = SHAPE.none
	mainPlayer.status = state.bored;
	global.cursor= cr_default;
}
with(all) selected = false;