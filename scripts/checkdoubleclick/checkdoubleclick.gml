function checkDoubleClick(click){
	
	if(click == true) {
		clickTime = current_time;
		return false;
	} else{
		if ((current_time - clickTime) <= 500){
			return true;		
		}else{
			clickTime = current_time;
			return false;
		}
	}
}