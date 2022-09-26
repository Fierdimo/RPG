///@param {struct} actor target actor
///@para {struct} attack attack:{target, CD}
///@param {struct} attacking actor

function is_sucess_attack(actor, _attack, attacker){
	randomize()
	var d20 = irandom_range(1,20);
	
	show_debug_message("from: "+attacker.myName +" to: "+actor.myName+" >> CD:"+string(_attack.CD))
	
	switch(_attack.target){
		case actor_base.armor_class:
			var total_attack = d20 + attacker.my.stat().attack;
			show_debug_message("ATTACK")
			show_debug_message(string (total_attack)+": "+string(attacker.my.stat().attack)+ " +1d20")
			show_debug_message(actor.my.stat().CA.total)
			if (total_attack >= actor.my.stat().CA.total) show_debug_message("Exito")
			else show_debug_message("fallo")
			break;
		case actor_base.armor_touch:
			var total_attack = d20 + attacker.my.stat().attack;
			if (total_attack >= actor.my.stat().CA.touch) show_debug_message("Exito")
			else show_debug_message("fallo")
			break;
		case actor_base.armor_flatfooted:
			var total_attack = d20 + attacker.my.stat().attack;
			if (total_attack >= actor.my.stat().CA.flat_footed) show_debug_message("Exito")
			else show_debug_message("fallo")
			break;
		default:
		var result = d20 + extractByStat({increase: _attack.target, magnitude:1}) 
		show_debug_message(result)
	
		if result >= _attack.CD show_debug_message("Exito")
		else show_debug_message("fallo")
		
	}
	

	

}