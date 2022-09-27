
#region //ACTOR STATEMENTS
// This values can't be 0 o reapear betwen them
enum actor_base{
	size = 1,
	reach,		
	hit_points,
	temporal_hitpoints,
	armor_class,	
	armor_touch,
	armor_flatfooted,
	damage_reduction,
	damage,
	heal,
	attack,
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
enum save{
	fortitude = actor_stat.tail,
	reflex,
	will,
	tail,
}
enum actor_ability{
	acrobatics = save.tail,
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
enum slot{
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