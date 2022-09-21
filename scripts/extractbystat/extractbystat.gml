function extractByStat(value, fixed = false){
	
	var eval = value.increase;
	if(fixed)eval = value.fixed;
	
		if(value.magnitude == STATIC_VALUE) return eval;
		else{
			switch(eval){
				case actor_stat.strength:
					return my.stat().strength.modificator * value.magnitude;
				case actor_stat.dexterity:
					return my.stat().dexterity.modificator * value.magnitude;
				case actor_stat.constitution:
					return my.stat().constitution.modificator * value.magnitude;
				case actor_stat.intelligence:
					return my.stat().intelligence.modificator * value.magnitude;
				case actor_stat.wisdom:
					return my.stat().wisdom.modificator * value.magnitude;
				case actor_stat.charisma:
					return my.stat().charisma.modificator * value.magnitude;
				default:
					return 0;
			}
		}
}