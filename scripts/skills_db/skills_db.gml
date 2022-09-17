function skills(_code){
	
	data = [
		{
			cast_time: STANDARD,
			effect:
				[
					//{stat: CHA, value:{magnitude: STATIC_VALUE, increase: 6}, type: ENHANCEMENT, time: {magnitude: STATIC_VALUE, increase: 10}},
					{target: TARGET_ME, stat: STR, value:{magnitude: 1, increase: CHA}, type: ENHANCEMENT, time: {magnitude: 2, increase: CHA}, variant: SPELL},
				],
			name:"Afinidad animal I: TORO",
			description:[ "Primer nivel de afinidad con la fuerza"],
			code:1
		},
	
		 {
			cast_time: SWIFT,
			effect:
				[
					//{stat: CHA, value:{magnitude: STATIC_VALUE, increase: 8}, type: ENHANCEMENT, time: {magnitude: STATIC_VALUE, increase: 10}},
					{target: TARGET_ME,stat: STR, value:{magnitude: 2, increase: CHA}, type: ENHANCEMENT, time: {magnitude: 2, increase: CHA}, variant: SPELL},
				],
			name:"Afinidad animal II: TORO",
			description:[ "Segundo nivel de afinidad con la fuerza"],
			code:2
		},
	
		 {
			cast_time: SWIFT,
			effect:
				[
					{target: TARGET_EITHER,stat: STR, value:{magnitude: STATIC_VALUE, increase: 7}, type: PROFANE, time: {magnitude: STATIC_VALUE, increase: 0.1}, variant: SPELL},
					{target: TARGET_EITHER,stat: STR, value:{magnitude: STATIC_VALUE, increase: 20}, type: PROFANE, time: {magnitude: STATIC_VALUE, increase: 0.1}, variant: SPELL},
				],
			name:"hex-old",
			description:[ "Segundo nivel de afinidad con la fuerza"],
			code:3
		},
	
		{
			cast_time: STANDARD,
			effect:
				[
					{target: TARGET_EITHER,stat: STR, value:{magnitude: STATIC_VALUE, increase: 1}, type: PROFANE, time: {magnitude: STATIC_VALUE, increase: 0.1}, variant: SPELL},
				],
			name:"Anti-hex-old",
			description:[ "Segundo nivel de afinidad con la fuerza"],
			code:4
		},
		
		 {
			cast_time: SWIFT,
			effect:
				[
					{target: TARGET_EITHER, stat: ACROBATICS, value:{magnitude: STATIC_VALUE, increase: 10}, type: ENHANCEMENT, time: {magnitude: STATIC_VALUE, increase: 10}, variant: SPELL},
				],
			name:"monkey",
			description:[ "Segundo nivel de afinidad con la fuerza"],
			code:5
		},
		
		 {
			cast_time: STANDARD,
			effect:
				[
					{target: TARGET_EITHER,stat: HIT_POINTS, value:{magnitude: STATIC_VALUE, increase: 10}, type:{attackTo: WILL, salv: true, damage: HALF, source: SACRED}, variant: SPELL},
				],
			name:"heal",
			description:[ "Segundo nivel de afinidad con la fuerza"],
			code:6
		},
		
		 {
			code:7,
			data:{
				name:"Harm",	
				description:[ "Conjuro que quema con la fuerza del mal"],
				icon: "imagen por montar",
				range: CLOSE_RANGE,
				type: DISTANCE_ATTACK,
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
				range: CLOSE_RANGE,
				type: DISTANCE_ATTACK,
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