function checkDoubleClick(click){
	
	if(click == true) {
		global.clickTime = current_time;
		return false;
	} else{
		if ((current_time - global.clickTime) <= 500){
			return true;		
		}else{
			global.clickTime = current_time;
			return false;
		}
	}
}