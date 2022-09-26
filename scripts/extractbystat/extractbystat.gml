function extractByStat(value, fixed = false, inConstructor = false){
	var eval = value.increase;
	if(fixed)eval = value.fixed;
	
	if (inConstructor) var statement = stat();
	else var statement = my.stat();
	
		if(value.magnitude == STATIC_VALUE) return eval;
		else{
			switch(eval){
				case actor_stat.strength:
					return statement.strength.modificator * value.magnitude;
				case actor_stat.dexterity:
					return statement.dexterity.modificator * value.magnitude;
				case actor_stat.constitution:
					return statement.constitution.modificator * value.magnitude;
				case actor_stat.intelligence:
					return statement.intelligence.modificator * value.magnitude;
				case actor_stat.wisdom:
					return statement.wisdom.modificator * value.magnitude;
				case actor_stat.charisma:
					return statement.charisma.modificator * value.magnitude;
				case actor_salvation.fortitude:
					return statement.fortitude * value.magnitude;
				case actor_salvation.reflex:
					return statement.reflex * value.magnitude;
				case actor_salvation.will:
					return statement.will * value.magnitude;
				default:
					return 0;
			}
		}
}