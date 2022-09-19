function get_range(data, target = "CURSOR", origin = oGame.mainPlayer){
	if(target == "CURSOR")
			distance = point_distance(origin.x, origin.y, mouse_x, mouse_y);
	else
			distance = point_distance(origin.x, origin.y, target.x, target.y);
			
	switch(data.range){
			case RANGE.PERSONAL:
				return true;
			case RANGE.TOUCH:
				if (distance < 1.5) return true;
				break;
			case RANGE.CLOSE:
				if (distance < 25+(data.level * 2.5)) return true;
				break;
			case RANGE.MEDIUM:
				if (distance < 100+(data.level * 10)) return true;
				break;
			case RANGE.LONG:
				if (distance < 400+(data.level * 40)) return true;
				break;
			case RANGE.UNLIMITED:
				return true;
				break;
			default:
				if (distance < string_digits(data.range)) return true;
		}
return false;
}