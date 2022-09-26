///@param {Struct} data <struct that must contain level & range>
///@param {Struct} target <[OPTIONAL] by default: cursor position>
///@param {Struct} origin < [OPTIONAL] by default: mainPlayer>
///@return {Bool} < in attack range or not>
function get_range(data, target = "CURSOR", origin = oGame.mainPlayer){
	if(target == "CURSOR")
			var distance = transform_size_to(size.foot, point_distance(origin.x, origin.y, mouse_x, mouse_y));
	else
			var distance = transform_size_to(size.foot, point_distance(origin.x, origin.y, target.x, target.y));

	switch(data.range){
			case RANGE.PERSONAL:
				return true;
			case RANGE.TOUCH:
				if (distance < origin.my.stat().reach) return true;
				break;
			case RANGE.MELEE:
				if (distance < origin.my.stat().reach) return true;
				break;
			case RANGE.RANGED:
				if (distance < origin.my.stat().reach) return true;
				break;
			case RANGE.CLOSE:
				if (distance < 25+(data.level * 2.5)) return true; // ¿¿ maybe >> if (distance < 25+(origin.my.stat().CASTER_LEVEL * 2.5))  ??
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