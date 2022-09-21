
#region //	spells descriptors

enum SHAPE{
	none = 0,
	CONE = 1,
	BURST = 2,
	LINE = 3,
	SQUARE = 4
}
enum RANGE{	
	 MELEE = -2,
	 RANGED = -1,
	 PERSONAL = 1,
	 TOUCH = 2,
	 CLOSE = 3,
	 MEDIUM = 4,
	 LONG = 5,
	 UNLIMITED = 6	
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
	me = 0,
	other = 1,
	either =2,
	cursor = 3,
	equiped = 4,
}
enum take_damage{
	negate,
	half,
	full
}

enum movement{
	standard,
	move,
	swift,
	inmediate,
	free
}
#endregion
#region //	damage types
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
#region //	bonus types
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
}
#endregion
