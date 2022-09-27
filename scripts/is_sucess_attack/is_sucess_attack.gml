///@param {struct} actor target actor
///@para {struct} attack attack:{target, CD}
///@param {struct} attacking actor

function is_sucess_attack(actor, _attack, attacker){
	
		function is_critical(character, d20){
			if (variable_struct_exists(character.my.weapons.show()[0], "critical")){
				if d20 >= 20- character.my.weapons.show()[0].critical.range return true
			}			
			return false
		}
	
		function do_attack(d20, _attacker, _armor, _skill = noone){
			var total_attack = d20 + _attacker.my.stat().attack;;
			if (total_attack >= _armor) {
				if is_critical(_attacker, d20) return attack.critical;
				return attack.sucess
			}
			else return attack.fail
		}
	randomize()
	var d20 = irandom_range(1,20);
	
	if (_attack.target == save.fortitude || _attack.target == save.reflex || _attack.target == save.will){ 
		if (d20 == 20) return attack.sucess;
		if (d20 == 1) return attack.fail;
	}
			
		switch(_attack.target){
			case actor_base.armor_class:
				return do_attack(d20, attacker, actor.my.stat().CA.total);			
			case actor_base.armor_touch:
				return do_attack(d20, attacker, actor.my.stat().CA.touch);
			case actor_base.armor_flatfooted:
				return do_attack(d20, attacker, actor.my.stat().CA.flat_footed);
			default: // saves or skills
			var result = d20 + extractByStat({increase: _attack.target, magnitude:1});	
			if result >= _attack.CD return attack.sucess
			else return attack.fail		
	}
}