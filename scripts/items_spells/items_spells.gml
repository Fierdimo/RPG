
#region 	spells descriptors

enum SHAPE{
	none,
	CONE,
	BURST,
	LINE,
	SQUARE,
}

enum RANGE{	
	 MELEE,
	 RANGED,
	 PERSONAL,
	 TOUCH,
	 CLOSE,
	 MEDIUM,
	 LONG,
	 UNLIMITED
}

enum ORIGIN{
	TARGET = -2,	
	SELF = -1,
	FRONT = 0,
	LEFT =45,
	BACK = 90,
	RIGHT = 135,	
}

enum point{
	me,
	other,
	either,
	cursor,
	equiped,
}

enum take_effect{
	negate,
	half,
	full,
	damage,
	heal,
	temporal_hitpoints
}

enum movement{
	free,
	swift,
	inmediate,
	move,
	standard,
	full_attack,
}
#endregion
#region 	damage types
enum damage{
	acid = 0,
	axiomatic = 1,
	bludgeoning = 2,
	chaotic = 3,
	cold = 4,
	electric = 5,
	evil = 6,
	fire = 7,
	force = 8,
	good = 9,
	piercing = 10,
	slashing = 11,
}
#endregion
#region 	bonus types
enum bonus{
	untyped,
	ability,
	base,
	alchemical,
	armor,
	circumstance,
	competence,
	deflection,
	dodge,
	enhancement,
	insight,
	luck,
	morale,
	natural,
	natural_armor,
	profane,
	racial,
	resistance,
	sacred,
	shield,
	size,	
	temporal,
	marked,
	maxHP
}
#endregion
#region   attack descriptors
	enum attack{
	sucess,
	fail,
	critical
	}
#endregion
