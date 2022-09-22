
#region //ACTOR STATEMENTS
// This values can't be 0 o reapear betwen them
enum actor_base{
	size = 1,
	reach,		
	hit_points,
	armor_class,	
	damage_reduction,
	tail,
}
enum actor_stat{
	strength = actor_base.tail,
	dexterity,
	constitution,
	intelligence,
	wisdom,
	charisma,
	tail,
}
enum actor_salvation{
	fortitude = actor_stat.tail,
	reflex,
	will,
	tail,
}
enum actor_ability{
	acrobatics = actor_salvation.tail,
	alchemy,
	armors,
	appraise,
	bluff,
	climb,
	diplomacy,
	disable_device,
	escape,
	heal,
	heavy_weapons,
	intimidate,
	light_weapons,
	perception,
	sense_motive,
	spellcraft,
	stealth,
	survival,
	taylor,
	tail,
}
enum spd{
	free_action = actor_ability.tail,
	standard_action,
	move_action,
	swift_action,
	inmediate_action,
	casting,
	tail,
}
#endregion
#region //ITEMS
enum GEAR{
weapons,
head,
shoulders,
torso,
arms,
hands,
rings,
foot,
soul,
bag,
tail
}
#endregion