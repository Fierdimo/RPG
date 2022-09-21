function transform_size_to(_stat_, _size_){
		var reach = function(__size__){
			switch(__size__){
				case size.fine:
					return size_reach.fine;
				case size.diminutive:
					return size_reach.diminutive;
				case size.tiny:
					return size_reach.tiny;
				case size.small:
					return size_reach.small;
				case size.medium:
					return size_reach.medium;
				case size.large_tall:
					return size_reach.large_tall;
				case size.large_long:
					return size_reach.large_long;
				case size.huge_long:
					return size_reach.huge_long;
				case size.huge_tall:
					return size_reach.huge_tall;
				case size.gargantuan_long:
					return size_reach.gargantuan_long;
				case size.gargantuan_tall:
					return size_reach.gargantuan_tall;
				case size.colossal_long:
					return size_reach.colossal_long;
				case size.colossal_tall:
					return size_reach.colossal_tall;
				default:
					return -1000;
		}
	}
	
	var modifier = function(__size__){
			switch(__size__){
				case size.fine:
					return size_modifier.fine;
				case size.diminutive:
					return size_modifier.diminutive;
				case size.tiny:
					return size_modifier.tiny;
				case size.small:
					return size_modifier.small;
				case size.medium:
					return size_modifier.medium;
				case size.large_tall:
					return size_modifier.large;
				case size.large_long:
					return size_modifier.large;
				case size.huge_tall:
					return size_modifier.huge;
				case size.huge_long:
					return size_modifier.huge;
				case size.gargantuan_tall:
					return size_modifier.gargantuan;
				case size.gargantuan_long:
					return size_modifier.gargantuan;
				case size.colossal_long:
					return size_modifier.colossal;
				case size.colossal_tall:
					return size_modifier.colossal;
				default:
					return -1000;
		}
	}
	var special = function(__size__){
			switch(__size__){
				case size.fine:
					return special_size_modifier.fine;
				case size.diminutive:
					return special_size_modifier.diminutive;
				case size.tiny:
					return special_size_modifier.tiny;
				case size.small:
					return special_size_modifier.small;
				case size.medium:
					return special_size_modifier.medium;
				case size.large_tall:
					return special_size_modifier.large;
				case size.large_long:
					return special_size_modifier.large;
				case size.huge_tall:
					return special_size_modifier.huge;
				case size.huge_long:
					return special_size_modifier.huge;
				case size.gargantuan_tall:
					return special_size_modifier.gargantuan;
				case size.gargantuan_long:
					return special_size_modifier.gargantuan;
				case size.colossal_long:
					return special_size_modifier.colossal;
				case size.colossal_tall:
					return special_size_modifier.colossal;
				default:
					return -1000;
		}
	}
	var fly= function(__size__){
			switch(__size__){
				case size.fine:
					return size_fly.fine;
				case size.diminutive:
					return size_fly.diminutive;
				case size.tiny:
					return size_fly.tiny;
				case size.small:
					return size_fly.small;
				case size.medium:
					return size_fly.medium;
				case size.large_tall:
					return size_fly.large;
				case size.large_long:
					return size_fly.large;
				case size.huge_tall:
					return size_fly.huge;
				case size.huge_long:
					return size_fly.huge;
				case size.gargantuan_tall:
					return size_fly.gargantuan;
				case size.gargantuan_long:
					return size_fly.gargantuan;
				case size.colossal_long:
					return size_fly.colossal;
				case size.colossal_tall:
					return size_fly.colossal;
				default:
					return -1000;
		}
	}
		var stealth = function(__size__){
			switch(__size__){
				case size.fine:
					return size_stealth.fine;
				case size.diminutive:
					return size_stealth.diminutive;
				case size.tiny:
					return size_stealth.tiny;
				case size.small:
					return size_stealth.small;
				case size.medium:
					return size_stealth.medium;
				case size.large_tall:
					return size_stealth.large;
				case size.large_long:
					return size_stealth.large;
				case size.huge_tall:
					return size_stealth.huge;
				case size.huge_long:
					return size_stealth.huge;
				case size.gargantuan_tall:
					return size_stealth.gargantuan;
				case size.gargantuan_long:
					return size_stealth.gargantuan;
				case size.colossal_long:
					return size_stealth.colossal;
				case size.colossal_tall:
					return size_stealth.colossal;
				default:
					return -1000;
		}
	}
	
	switch(_stat_){
		case size.reach:		return reach(_size_);
		case size.modifier:	return modifier(_size_)
		case size.special:	return special(_size_);
		case size.fly:			return fly(_size_);
		case size.stealth:	return stealth(_size_);
	}
}