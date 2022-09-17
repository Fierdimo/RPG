function equipment_db(_code){
	data = [{
		code:001,
		name: "Adventurer Soul",
		description: "1er nivel",
		experience_conditions:{value: 0},
		effect: [
			{ target: "STR", value:{magnitude: "STATIC_VALUE", increase: "PLAYER_DEFINED"}, type: "ENHANCEMENT", variant: "EQUIPMENT"},
			{ target: "CON", value:{magnitude: "STATIC_VALUE", increase: 4}, type: "ENHANCEMENT", variant: "EQUIPMENT"},
			{ target: "HIT_POINTS", value:{magnitude: "STATIC_VALUE", increase: "PLAYER_DEFINED"}, type: "BASE", variant: "EQUIPMENT"},
			{ target: "HIT_POINTS", value:{magnitude: "STATIC_VALUE", increase: "PLAYER_DEFINED"}, type: "MARKED", variant: "EQUIPMENT"},
			{ target: "HIT_POINTS", value:{magnitude: 1, increase: "CON"}, type: "BASE", variant: "EQUIPMENT"},
			{ target: "HIT_POINTS", value:{magnitude: 1, increase: "CON"}, type: "MARKED", variant: "EQUIPMENT"},
			{variant: "ACTION_KEY", skillCode: 7}
		]},
		
		{
		code:002,
		name: "Adventurer Soul",
		description: "2do nivel",
		experience_conditions:{},
		effect: [
			{ target: "DAMAGE_REDUCTION", value:{magnitude: "STATIC_VALUE", increase: "PLAYER_DEFINED"}, type: "PROFANE", variant: "EQUIPMENT"},
			{ target: "CON", value:{magnitude: "STATIC_VALUE", increase: 6}, type: "ENHANCEMENT", variant: "EQUIPMENT"},
			{ target: "HIT_POINTS", value:{magnitude: "STATIC_VALUE", increase: "PLAYER_DEFINED"}, type: "BASE", variant: "EQUIPMENT"},
			{ target: "HIT_POINTS", value:{magnitude: "STATIC_VALUE", increase: "PLAYER_DEFINED"}, type: "MARKED", variant: "EQUIPMENT"},
			{ target: "HIT_POINTS", value:{magnitude: 1, increase: "CHA"}, type: "BASE", variant: "EQUIPMENT"},
			{ target: "HIT_POINTS", value:{magnitude: 1, increase: "CHA"}, type: "MARKED", variant: "EQUIPMENT"},
			{variant: "ACTION_KEY", skillCode: 7}
		]},
		{
			code:003,
			name: "power ring",
			description: "1er circulo",
			experience_conditions:{},
			effect:[{variant: "ACTION_KEY", skillCode: 8}],
		},
		{
		code:004,
		name: "Garrote",
		description: "Básicamente, un palo",
		experience_conditions:{},
		effect: [
			{variant: "ACTION_KEY", skillCode: 9},
		]},
	]
	
	index = 0;
	repeat(array_length(data)){
		if(data[index].code == _code) return data[index];
		index++;
	}
	return {code: -1}
}