function Player() constructor{
	#region VARIABLE DEFINITIONS
		#region //Stats
		str = new Ability();
		dex = new Ability();
		con = new Ability();
		int = new Ability();
		wis = new Ability();
		cha = new Ability();
		#endregion
		#region //Basics
		name = "";
		hitPoints = new HitPoints();
		armorClass = new ArmorClass();
		mySize = new basicStat();
		myReach = new Reach();
		myAttack = new BaseStat();
		#endregion		 
		#region //Saves
		fortitude = new BaseStat();
		reflex = new BaseStat();
		will = new BaseStat();
		#endregion
		#region //Skills
		acrobatics = new BaseStat();
		alchemy = new BaseStat();
		armors = new BaseStat();
		appraise = new BaseStat();
		bluff = new BaseStat();
		climb = new BaseStat();
		diplomacy = new BaseStat();
		disableDevice = new BaseStat();
		escape = new BaseStat();
		heal = new BaseStat();
		heavyWeapons = new BaseStat();
		intimidate = new BaseStat();
		lightWeapons = new BaseStat();
		perception = new BaseStat();
		senseMotive = new BaseStat();
		spellCraft = new BaseStat();
		stealth = new BaseStat();
		survival = new BaseStat();
		taylor = new BaseStat();		 
		#endregion 
		#region //Specials
		standardActionSpeed = new BaseStat();
		moveActionSpeed = new BaseStat();
		swiftActionSpeed = new BaseStat();
		inmediateActionSpeed = new BaseStat();
		moveSpeed = new BaseStat();
		#endregion
		#region //Equipment
			weapons =	new Equip_gears();
			head =			new Equip_gears();
			arms =		new Equip_gears();
			torso =		new Equip_gears();
			foot =			new Equip_gears();
			soul =			new Equip_gears();
			shoulders =new Equip_gears();
			hands =		new Equip_gears();
			rings =		new Equip_gears();
			bag =			new Equip_gears();
		#endregion
	#endregion
	
	#region Stats functions
	function stat(item = bonus.untyped, value = 0, type = bonus.untyped){
		
		#region  //BASES
			if(item == actor_base.size) {
				mySize.set(value);
				myReach.add(transform_size_to(size.reach, value), bonus.natural);
			}
			if(item == actor_base.reach)								myReach.add(value, type);
			if(item == actor_base.hit_points)						hitPoints.add(value, type);		
			if(item == actor_base.temporal_hitpoints)		hitPoints.add(value, type);	
			if(item == actor_base.armor_class)					armorClass.add(value, type);
			if(item == actor_base.attack)								myAttack.add(value, type);
		#endregion
		#region  // STATS			 
			if (item == actor_stat.strength) {
				str.add(value, type);
				armors.add(str.modificator(), bonus.ability);
				climb.add(str.modificator(), bonus.ability);
				heavyWeapons.add(str.modificator(), bonus.ability);			
			}
				
			if (item == actor_stat.dexterity) {
				dex.add(value, type);
				reflex.add(dex.modificator(), bonus.ability);
				armorClass.add(dex.modificator(), bonus.ability);
			
				acrobatics.add(dex.modificator(), bonus.ability);
				disableDevice.add(dex.modificator(), bonus.ability);
				escape.add(dex.modificator(), bonus.ability);
				lightWeapons.add(dex.modificator(), bonus.ability);
				stealth.add(dex.modificator(), bonus.ability);
			
				moveSpeed.add(((dex.total()-10)/100));
			}
		
			if (item == actor_stat.constitution) {
				con.add(value, type);
				fortitude.add(con.modificator(), bonus.ability);
			}
		
			if (item == actor_stat.intelligence) {
				int.add(value, type);
				alchemy.add(int.modificator(), bonus.ability);
				appraise.add(int.modificator(), bonus.ability);
				spellCraft.add(int.modificator(), bonus.ability);
				taylor.add(int.modificator(), bonus.ability);
			
				standardActionSpeed.add(((int.total()-10)/100), bonus.ability);
			}
		
			if (item == actor_stat.wisdom){
				wis.add(value, type);
				will.add(wis.modificator(), bonus.ability);
			
				heal.add(wis.modificator(), bonus.ability);
				perception.add(wis.modificator(), bonus.ability);
				senseMotive.add(wis.modificator(), bonus.ability);
				survival.add(wis.modificator(), bonus.ability);
			}
		
			if (item == actor_stat.charisma) {
				cha.add(value, type);	
				bluff.add(cha.modificator(), bonus.ability);
				diplomacy.add(cha.modificator(), bonus.ability);
				intimidate.add(cha.modificator(), bonus.ability);
			}
		#endregion
		#region  // SAVES
			if (item ==	save.fortitude)		fortitude.add(value, type);
			if (item ==	save.reflex)			reflex.add(value, type);
			if (item ==	save.will)				will.add(value, type);
		#endregion
		#region // SKILLS
			if (item ==	actor_ability.acrobatics)		acrobatics.add(value, type);
			if (item ==	actor_ability.alchemy)			alchemy.add(value, type);
			if (item ==	actor_ability.armors)			armors.add(value, type);
			if (item ==	actor_ability.appraise)			appraise.add(value, type);
			if (item ==	actor_ability.bluff)			bluff.add(value, type);
			if (item ==	actor_ability.climb)			climb.add(value, type);
			if (item ==	actor_ability.diplomacy)		diplomacy.add(value, type);
			if (item ==	actor_ability.disable_device)	disableDevice.add(value, type);
			if (item ==	actor_ability.escape)			escape.add(value, type);
			if (item ==	actor_ability.heal)				heal.add(value, type);
			if (item ==	actor_ability.heavy_weapons)	heavyWeapons.add(value, type);
			if (item ==	actor_ability.intimidate)		intimidate.add(value, type);
			if (item ==	actor_ability.light_weapons)	lightWeapons.add(value, type);
			if (item ==	actor_ability.perception)		perception.add(value, type);
			if (item ==	actor_ability.sense_motive)	senseMotive.add(value, type);
			if (item ==	actor_ability.spellcraft)		spellCraft.add(value, type);
			if (item ==	actor_ability.stealth)			stealth.add(value, type);
			if (item ==	actor_ability.survival)			survival.add(value, type);
			if (item ==	actor_ability.taylor)			taylor.add(value, type);
		#endregion
		#region // ACTION MODIFIERS
			if (item ==	spd.standard_action)		standardActionSpeed.add(value, type); 
			if (item ==	spd.move_action)			moveActionSpeed.add(value, type);
			if (item ==	spd.swift_action)			swiftActionSpeed.add(value, type);
			if (item ==	spd.inmediate_action)	inmediateActionSpeed.add(value, type);
			if (item ==	spd.move_action)			moveSpeed.add(value, type);
		#endregion

	#region RETURN STAT
		return
			{				
			#region //BASES
				name:			name,
				HP:				hitPoints.showme(),
				CA:				{
					total:			armorClass.total(),
					touch:			armorClass.touch(),
					flat_footed:	armorClass.flatFooted(),
					},
				reach:			myReach.get(),
				attack:			myAttack.total(),
			#endregion
			#region  // STATS	
				strength:			{ total: str.total(), modificator: str.modificator()},
				dexterity:		{ total: dex.total(), modificator: dex.modificator()},
				constitution:	{ total: con.total(), modificator: con.modificator()},
				intelligence:	{ total: int.total(), modificator: int.modificator()},
				wisdom:			{ total: wis.total(), modificator: wis.modificator()},
				charisma:		{ total: cha.total(), modificator: cha.modificator()},
			#endregion
			#region  // SAVES
				fortitude:		fortitude.total(),
				reflex:			reflex.total(),
				will:				will.total(),
			#endregion
			#region // SKILLS
				acrobatics:			acrobatics.total(),
				alchemy:				alchemy.total(),
				armors:				armors.total(),
				appraise:			appraise.total(),
				bluff:					bluff.total(),
				climb:					climb.total(),
				diplomacy:			diplomacy.total(),
				disable_device:	disableDevice.total(),
				escape:				escape.total(),
				heal:					heal.total(),
				heavy_weapons:	heavyWeapons.total(),
				intimidate:			intimidate.total(),
				light_weapons:	lightWeapons.total(),
				perception:			perception.total(),
				sense_motive:	senseMotive.total(),
				spellcraft:			spellCraft.total(),
				stealth:				stealth.total(),
				survival:				survival.total(),
				taylor:					taylor.total(),
			#endregion
			#region // ACTION MODIFIERS
				standardActionSpeed:	standardActionSpeed.total(),
				moveActionSpeed:			moveActionSpeed.total(),
				swiftActionSpeed:			swiftActionSpeed.total(),
				inmediateActionSpeed:	inmediateActionSpeed.total(),
				walkSpeed:						moveSpeed.total(),
			#endregion
			}
	#endregion
	}
	#endregion
	
	#region Equipment functions
	
	
	function essemble_equipment(db_gears){
		var equipments = [weapons, head, shoulders, torso, arms, hands, rings, foot, soul, bag,];
	
		for(var slot = 0; slot < slot.tail; slot ++){
			for(var item = 0; item < array_length(db_gears[slot].content);item++){	
					
					var newItem = noone;
					
					if (variable_struct_exists(db_gears[slot].content[item], "code")){
						newItem = equipment_db(db_gears[slot].content[item].code);				
						if(newItem.code) replace_playerOptions(newItem, db_gears[slot].content[item]); // reemplazar valores				
					}
					
					equipments[slot].add(newItem); // Save in structure
					
			}
		}	
	}
	
	function equipment_to_buff(actionKeys, myBuffs){
		var equipments = [weapons, head, shoulders, torso, arms, hands, rings, foot, soul];
	
		for (var type = 0; type < array_length(equipments); type++){
			for(var slot = 0; slot < array_length(equipments[type].show()); slot++){
				
				var equip = equipments[type].show()[slot];
				
				if(equip){					
					for(var effect_n = 0; effect_n < array_length(equip.effect); effect_n ++){
							effect = equip.effect[effect_n];
						
							if(variable_struct_exists(effect, "skillCode")){
									if(effect.key != "") 
										actionKeys.add(effect.key, skills(effect.skillCode));
							}
							else	 myBuffs.add(effect)
					}
				}
			}
		}
	
		for(var i = 0; i < myBuffs.len(); i++)
			{stat(myBuffs.item(i).target, extractByStat(myBuffs.item(i).value,,true), myBuffs.item(i).type );}
	
	
	}
	
	#endregion
	
	#region Accesories
	
	function change_vital(stat, value, type){
		switch(type){
			case bonus.base:
				stat += value
				if (stat < 0) stat = 0;
				return min(stat, hitPoints.base.get())
			case bonus.temporal:
				stat += value;
				if (stat < 0) stat = 0;
				return min(stat, hitPoints.temporal.get())
			default:
				show_debug_message("===================={ NO VALID ATTRIBUTE: "+ string(type) +" }=======================")
		}
	}
	#endregion
}