function skills(_code){
	
	data = [		
		 {
			code:7,
			data:{
				name:"Harm",	
				description:[ "Conjuro que quema con la fuerza del mal"],
				icon: "imagen por montar",
				area:{shape: SHAPE.LINE, spread: 20},
				range: RANGE.CLOSE,
				type: RANGE.RANGED,
				origin: ORIGIN.TARGET,
				effect: {on_caster: true, on_ally: true, on_enemy: {type: "undeath", result: "inverse"}}, 
				school: "NIGROMANCE",
				level:1,
				salvation: actor_salvation.will,
				harmless: false,
				save: take_effect.half,
				cast_time: movement.standard,
				},
			require_attack: true,
			
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
				salvation: actor_salvation.will,
				harmless: true,
				save: take_effect.negate,
				target: point.cursor,
				cast_time: movement.standard,
			},
			
			require_attack: true,
			effect:
				[
					{target: actor_base.temporal_hitpoints, value:{magnitude: STATIC_VALUE, increase: 10}, time: {magnitude: STATIC_VALUE, increase: 0, fixed: 60}, type: bonus.temporal},					
				],	
		},
		{
			code: 9,
			data: {
				name:"Swing",
				description:[ "Ataca con toda la fuerza disponible"],
				icon: "imagen por montar",
				range: RANGE.MELEE,
				origin: ORIGIN.FRONT,
				fail: take_effect.full,
				cast_time: movement.standard,
			},
			require_attack: true,
			effect:
				[
					{target: actor_base.hit_points, value:{magnitude: STATIC_VALUE, increase: -10}, type: damage.bludgeoning},
				],
		},
	
	
	
	]
	
	index = 0;
	repeat(array_length(data)){
		if(data[index].code == _code) return data[index];
		index++;
	}
	return {code: -1}

}