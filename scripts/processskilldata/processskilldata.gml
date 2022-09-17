function processSkillData(data){
	
	with(oGame){
		var has_range = false;
		var approved = false;
		var _target_ = Actors[target];
		//check range
		switch(data.range){
			case PERSONAL:
				_target_ = Actors[0]
				has_range = true;
				break;
			case TOUCH:
				if (Actors[target].distance < 1.5) has_range = true;
				break;
			case CLOSE_RANGE:
				if (Actors[target].distance < 25+(data.level * 2.5)) has_range = true;
				break;
			case MEDIUM_RANGE:
				if (Actors[target].distance < 100+(data.level * 10)) has_range = true;
				break;
			case LONG_RANGE:
				if (Actors[target].distance < 400+(data.level * 40)) has_range = true;
				break;
			case UNLIMITED_RANGE:
				has_range = true;
				break;
			default:
				if (Actors[target].distance < string_digits(data.range)) has_range = true;
		}
		//
		approved = has_range
		return {approved: approved, target: _target_};
	}
	
}