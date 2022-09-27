function Equipment(_gear, slot) constructor{
	
	name= _gear.name;
	description = _gear.description;
	experience_conditions = _gear.experience_conditions;
	effect = _gear.effect;
	slot_in_db= slot;
	if (variable_struct_exists(_gear, "critical")) critical= _gear.critical;
}