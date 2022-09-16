function skills(_code){
	
	data = [
		{
			type: STANDARD,
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
			type: SWIFT,
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
			type: SWIFT,
			effect:
				[
					{target: TARGET_EITHER,stat: STR, value:{magnitude: STATIC_VALUE, increase: 7}, type: PROFANE, time: {magnitude: STATIC_VALUE, increase: 0.1}, variant: SPELL},
					{target: TARGET_EITHER,stat: STR, value:{magnitude: STATIC_VALUE, increase: 20}, type: PROFANE, time: {magnitude: STATIC_VALUE, increase: 0.1}, variant: SPELL},
				],
			name:"hex",
			description:[ "Segundo nivel de afinidad con la fuerza"],
			code:3
		},
	
		{
			type: STANDARD,
			effect:
				[
					{target: TARGET_EITHER,stat: STR, value:{magnitude: STATIC_VALUE, increase: 1}, type: PROFANE, time: {magnitude: STATIC_VALUE, increase: 0.1}, variant: SPELL},
				],
			name:"Anti-hex",
			description:[ "Segundo nivel de afinidad con la fuerza"],
			code:4
		},
		
		 {
			type: SWIFT,
			effect:
				[
					{target: TARGET_EITHER, stat: ACROBATICS, value:{magnitude: STATIC_VALUE, increase: 10}, type: ENHANCEMENT, time: {magnitude: STATIC_VALUE, increase: 10}, variant: SPELL},
				],
			name:"monkey",
			description:[ "Segundo nivel de afinidad con la fuerza"],
			code:5
		},
		
		 {
			type: STANDARD,
			effect:
				[
					{target: TARGET_EITHER,stat: HIT_POINTS, value:{magnitude: STATIC_VALUE, increase: 10}, type:{attackTo: WILL, salv: true, damage: HALF, source: SACRED}, variant: SPELL},
				],
			name:"heal",
			description:[ "Segundo nivel de afinidad con la fuerza"],
			code:6
		},
		
		 {
			type: STANDARD,
			effect:
				[
					{target: TARGET_EITHER, stat: HIT_POINTS, value:{magnitude: STATIC_VALUE, increase: -10}, type:{attackTo: WILL, salv: true, damage: HALF, source: PROFANE, range: DISTANCE, distance: 30}, variant: SPELL},
				],
			name:"Harm",	
			description:[ "Segundo nivel de afinidad con la fuerza"],
			code:7			
		},
		{
			type: SWIFT,
			effect:
				[
					//{target: TARGET_EITHER, stat: HIT_POINTS, value:{magnitude: STATIC_VALUE, increase: 10}, type:{attackTo: WILL, salv: true, damage: HALF, source: PROFANE}, variant: SPELL},
					{target: TARGET_EITHER, stat: HIT_POINTS, value:{magnitude: 5, increase: CHA, fixed: CHA}, time: {magnitude: STATIC_VALUE, increase: 0, fixed: 60}, type: TEMP , variant: SPELL},
				],
			name:"FALSE LIFE",
			description:[ "Muerto pero vivo"],
			code:8			
		},
		{
			type: STANDARD,
			effect:
				[
					{target: TARGET_EITHER, stat: HIT_POINTS, value:{magnitude: STATIC_VALUE, increase: -10}, type:{attackTo: ARMOR_CLASS, salv: false, damage: FULL, source: BLUDGEONING, range: MELEE, distance: 1.5}, variant: WEAPON},
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