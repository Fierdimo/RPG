function extractByStat(value, fixed = false){
	
	var eval = value.increase;
	if(fixed)eval = value.fixed;
	
		if(value.magnitude == STATIC_VALUE) return eval;
		else{
			switch(eval){
				case STR:
					return my.stat().strength.modificator * value.magnitude;
				case DEX:
					return my.stat().dexterity.modificator * value.magnitude;
				case CON:
					return my.stat().constitution.modificator * value.magnitude;
				case INT:
					return my.stat().intelligence.modificator * value.magnitude;
				case WIS:
					return my.stat().wisdom.modificator * value.magnitude;
				case CHA:
					return my.stat().charisma.modificator * value.magnitude;
				default:
					return 0;
			}
		}
}