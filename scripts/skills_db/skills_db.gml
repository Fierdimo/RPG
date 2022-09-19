function skills(_code){
	
	data = [		
		 {
			code:7,
			data:{
				name:"Harm",	
				description:[ "Conjuro que quema con la fuerza del mal"],
				icon: "imagen por montar",
				area:{shape: SHAPE.CONE, spread: 60},
				range: RANGE.CLOSE,
				type: RANGE.RANGED,
				origin: ORIGIN.SELF,
				school: "NIGROMANCE",
				level:1,
				salvation: WILL,
				harmless: false,
				success: HALF,
				cast_time: STANDARD,
				},
			require_attack: true,
			
			effect:
				[
					{target: DAMAGE, value:{magnitude: STATIC_VALUE, increase: 15}, type: PROFANE},
				],
						
		},
		{
			code:8,
			data: {
				name:"FALSE LIFE",
				description:[ "Muerto pero vivo"],
				icon: "imagen por montar",
				range: RANGE.CLOSE,
				type: RANGE.RANGED,
				school: "NIGROMANCE",
				level:1,
				salvation: WILL,
				harmless: true,
				success: HALF,
				target: TARGET_POINTER,
				cast_time: SWIFT,
			},
			
			require_attack: false,
			effect:
				[
					{target: HIT_POINTS, value:{magnitude: STATIC_VALUE, increase: 10, fixed: 10}, time: {magnitude: STATIC_VALUE, increase: 0, fixed: 60}, type: TEMP},
					{target: HIT_POINTS, value:{magnitude: STATIC_VALUE, increase: 10, fixed: 10}, time: {magnitude: STATIC_VALUE, increase: 0, fixed: 60}, type: TEMP},
				],	
		},
		{
			cast_time: STANDARD,
			effect:
				[
					{target: HIT_POINTS, value:{magnitude: STATIC_VALUE, increase: -10}, type: BLUDGEONING, variant: WEAPON},
				],
			name:"Swing",
			description:[ "Ataca con toda la fuerza disponible"],
			code:9		
		},
	
	
	
	]
	
	index = 0;
	repeat(array_length(data)){
		if(data[index].code == _code) return data[index];
		index++;
	}
	return {code: -1}

}