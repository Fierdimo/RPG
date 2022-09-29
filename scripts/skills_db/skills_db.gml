function skills(_code){
	
	data = [		
		 {
			code:7,
			data:{
				name:"Harm",	
				description:[ "Conjuro que quema con la fuerza del mal"],
				icon: "imagen por montar",
				area:{shape: SHAPE.BURST, spread: {magnitude: STATIC_VALUE, increase: 30}},
				range: RANGE.UNLIMITED,
				type: RANGE.RANGED,
				origin: ORIGIN.SELF,
				effect: {on_caster: true, on_ally: true, on_enemy: {type: "undeath", result: "inverse"}}, 
				school: "NIGROMANCE",
				level:1,
				harmless: false,
				sucess: take_effect.half,
				cast_time: movement.move,
				},
			require_attack: {target: actor_base.armor_class, CD: 15},
			
			effect:
				[
					{target: actor_base.damage, value:{magnitude: STATIC_VALUE, increase: 15}, type: bonus.profane},
				],
						
		},
		{
			code:8,
			data: {
				name:"FALSE LIFE",
				description:[ "Muerto pero vivo"],
				icon: "imagen por montar",				
				targets: {magnitude: STATIC_VALUE, increase: 1},
				range: RANGE.CLOSE,
				type: RANGE.RANGED,
				origin: ORIGIN.TARGET,
				effect: {on_caster: true,}, 
				school: "NIGROMANCE",
				level:1,
				salvation: save.will,
				sucess: take_effect.negate,
				harmless: true,
				target: point.cursor,
				cast_time: movement.standard,
			},
			
			//require_attack: {target: save.will, CD: 15},
			require_attack: {target: noone},
			effect:
				[
					{target: actor_base.temporal_hitpoints, value:{magnitude: STATIC_VALUE, increase: 10}, time: {magnitude: STATIC_VALUE, increase: 10}, type: bonus.temporal},					
				],	
		},
		{
			code: 9,
			data: {
				name:"Swing",
				description:[ "Ataca con toda la fuerza disponible"],
				icon: "imagen por montar",
				area:{shape: SHAPE.BURST, spread: {magnitude: STATIC_VALUE, increase: actor_base.reach}},
				targets: {magnitude: STATIC_VALUE, increase: 1},
				range: RANGE.UNLIMITED,
				type: RANGE.MELEE,
				origin: ORIGIN.FRONT,
				effect: {on_caster: false,}, 
				cast_time: movement.standard,
				sucess: take_effect.negate,
			},
			require_attack: {target: actor_base.armor_class, CD: 15},
			effect:
				[
					{target: actor_base.damage, value:{magnitude: STATIC_VALUE, increase: 10}, type: damage.bludgeoning},
					{target: actor_base.damage, value:{magnitude: 1, increase: actor_stat.strength}, type: damage.bludgeoning},
				],
		},
	]
	
	var index = 0;
	repeat(array_length(data)){
		if(data[index].code == _code) return data[index];
		index++;
	}
	return {code: -1}

}