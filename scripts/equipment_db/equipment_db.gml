function equipment_db(_code){
	data = [{
		code:001,
		name: "Adventurer Soul",
		description: "1er nivel",
		experience_conditions:{value: 0},
		effect: [
			{ target: actor_stat.strength, value:{magnitude: "STATIC_VALUE", increase: "PLAYER_DEFINED"}, type: bonus.enhancement, },
			{ target: actor_stat.constitution, value:{magnitude: "STATIC_VALUE", increase: 4}, type: bonus.enhancement, },
			{ target: actor_base.hit_points, value:{magnitude: "STATIC_VALUE", increase: "PLAYER_DEFINED"}, type: bonus.base, },
			{ target: actor_base.hit_points, value:{magnitude: "STATIC_VALUE", increase: "PLAYER_DEFINED"}, type: "MARKED", },
			{ target: actor_base.hit_points, value:{magnitude: 1, increase: actor_stat.constitution}, type: bonus.base, },
			{ target: actor_base.hit_points, value:{magnitude: 1, increase: actor_stat.constitution}, type: "MARKED", },
			{ skillCode: 7}
		]},
		
		{
		code:002,
		name: "Adventurer Soul",
		description: "2do nivel",
		experience_conditions:{},
		effect: [
			{ target: actor_base.reach, value:{magnitude: "STATIC_VALUE", increase: 5}, type: bonus.temporal},
			{ target: actor_stat.constitution, value:{magnitude: "STATIC_VALUE", increase: 6}, type: bonus.enhancement, },
			{ target: actor_base.hit_points, value:{magnitude: "STATIC_VALUE", increase: "PLAYER_DEFINED"}, type: bonus.base, },
			{ target: actor_base.hit_points, value:{magnitude: "STATIC_VALUE", increase: "PLAYER_DEFINED"}, type: "MARKED", },
			{ target: actor_base.hit_points, value:{magnitude: 1, increase: actor_stat.charisma}, type: bonus.base, },
			{ target: actor_base.hit_points, value:{magnitude: 1, increase: actor_stat.charisma}, type: "MARKED", },
			{ skillCode: 7}
		]},
		{
			code:003,
			name: "power ring",
			description: "1er circulo",
			experience_conditions:{},
			effect:[{ skillCode: 8}],
		},
		{
		code:004,
		name: "Garrote",
		description: "Básicamente, un palo",
		experience_conditions:{},
		effect: [
			{target: actor_base.reach, value: {magnitude: 1, increase: 5}, type: bonus.base},
			{ skillCode: 9},
		]},
	]
	
	index = 0;
	repeat(array_length(data)){
		if(data[index].code == _code) return data[index];
		index++;
	}
	return {code: -1}
}