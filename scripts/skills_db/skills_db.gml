function skills(_code){
	
	data = [		
		 {
			code:7,
			data:{
				name:"Harm",	
				description:[ "Conjuro que quema con la fuerza del mal"],
				icon: "imagen por montar",
				area:{shape: SHAPE.LINE, spread: 120},
				range: RANGE.MEDIUM,
				type: RANGE.RANGED,
				origin: ORIGIN.TARGET,
				school: "NIGROMANCE",
				level:1,
				salvation: actor_salvation.will,
				harmless: false,
				fail: take_damage.half,
				cast_time: movement.standard,
				},
			require_attack: true,
			
			effect:
				[
					{target: DAMAGE, value:{magnitude: STATIC_VALUE, increase: 15}, type: bonus.profane},
				],
						
		},
		{
			code:8,
			data: {
				name:"FALSE LIFE",
				description:[ "Muerto pero vivo"],
				icon: "imagen por montar",
				range: RANGE.MEDIUM,
				type: RANGE.RANGED,
				origin: ORIGIN.TARGET,
				school: "NIGROMANCE",
				level:1,
				salvation: actor_salvation.will,
				harmless: true,
				fail: take_damage.negate,
				target: point.cursor,
				cast_time: movement.standard,
			},
			
			require_attack: true,
			effect:
				[
					{target: actor_base.hit_points, value:{magnitude: STATIC_VALUE, increase: 10, fixed: 10}, time: {magnitude: STATIC_VALUE, increase: 0, fixed: 60}, type: TEMP},
					{target: actor_base.hit_points, value:{magnitude: STATIC_VALUE, increase: 10, fixed: 10}, time: {magnitude: STATIC_VALUE, increase: 0, fixed: 60}, type: TEMP},
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
				fail: take_damage.full,
				cast_time: movement.standard,
			},
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