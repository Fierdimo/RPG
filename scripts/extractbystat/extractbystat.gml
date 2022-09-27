function extractByStat(value, fixed = false, inConstructor = false){
	var eval = value.increase;
	if(fixed)eval = value.fixed;
	
	if (inConstructor) var statement = stat();
	else var statement = my.stat();
	
		if(value.magnitude == STATIC_VALUE) return eval;
		else{
			if (eval > actor_ability.tail || eval < actor_stat.strength) { return 0;}			
		#region //statement list			
			var stat_list =[
						statement.strength.modificator,
						statement.dexterity.modificator,
						statement.constitution.modificator,
						statement.intelligence.modificator,
						statement.wisdom.modificator,
						statement.charisma.modificator,
						statement.fortitude,
						statement.reflex,
						statement.will,
						statement.acrobatics,
						statement.alchemy,
						statement.armors,
						statement.appraise,
						statement.bluff,
						statement.climb,
						statement.diplomacy,
						statement.disable_device,
						statement.escape,
						statement.heal,
						statement.heavy_weapons,
						statement.intimidate,
						statement.light_weapons,
						statement.perception,
						statement.sense_motive,
						statement.spellcraft,
						statement.stealth,
						statement.survival,
						statement.taylor,
					]
			#endregion
			return stat_list[eval - actor_stat.strength] * value.magnitude;
		}
}