function Player() constructor{
	
	name = "";
	changed = false
	
	//Stats
	str = new Ability();
	dex = new Ability();
	con = new Ability();
	int = new Ability();
	wis = new Ability();
	cha = new Ability();
	
	//Basics
	hitPoints = new HitPoints();
	armorClass = new ArmorClass();
	mySize = new basicStat();
	myReach = new Reach();
		 		 
	//Saves
	fortitude = new BaseStat();
	reflex = new BaseStat();
	will = new BaseStat();
		 
	//Skills
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
		 
	//Specials
	standardActionSpeed = new BaseStat();
	moveActionSpeed = new BaseStat();
	swiftActionSpeed = new BaseStat();
	inmediateActionSpeed = new BaseStat();
	moveSpeed = new BaseStat();
			
	function stat(skill = bonus.untyped, value = 0, type = bonus.untyped, maxVal = 0 ){
		
		#region  //BASES
		if(skill == actor_base.size) {
			mySize.set(value);
			myReach.add(transform_size_to(size.reach, value), bonus.natural);
		}
		if(skill == actor_base.reach)				myReach.add(value, type);
		if(skill == actor_base.hit_points)		hitPoints.add(value, type, maxVal);		
		if(skill == actor_base.armor_class)	armorClass.add(value, type);
		#endregion
		#region  // STATS			 
		if (skill == actor_stat.strength) {
			str.add(value, type);
			armors.add(str.modificator(), bonus.ability);
			climb.add(str.modificator(), bonus.ability);
			heavyWeapons.add(str.modificator(), bonus.ability);			
		}
				
		if (skill == actor_stat.dexterity) {
			dex.add(value, type);
			reflex.add(dex.modificator(), bonus.ability);
			armorClass.add(dex.modificator(), bonus.ability);
			
			acrobatics.add(str.modificator(), bonus.ability);
			disableDevice.add(str.modificator(), bonus.ability);
			escape.add(str.modificator(), bonus.ability);
			lightWeapons.add(str.modificator(), bonus.ability);
			stealth.add(str.modificator(), bonus.ability);
			
			moveSpeed.add(((dex.total()-10)/100));
		}
		
		if (skill == actor_stat.constitution) {
			con.add(value, type);
			fortitude.add(dex.modificator(), bonus.ability);
		}
		
		if (skill == actor_stat.intelligence) {
			int.add(value, type);
			alchemy.add(str.modificator(), bonus.ability);
			appraise.add(str.modificator(), bonus.ability);
			spellCraft.add(str.modificator(), bonus.ability);
			taylor.add(str.modificator(), bonus.ability);
			
			standardActionSpeed.add(((int.total()-10)/100), bonus.ability);
		}
		
		if (skill == actor_stat.wisdom){
			wis.add(value, type);
			will.add(dex.modificator(), bonus.ability);
			
			heal.add(str.modificator(), bonus.ability);
			perception.add(wis.modificator(), bonus.ability);
			senseMotive.add(str.modificator(), bonus.ability);
			survival.add(str.modificator(), bonus.ability);
		}
		
		if (skill == actor_stat.charisma) {
			cha.add(value, type);	
			bluff.add(str.modificator(), bonus.ability);
			diplomacy.add(str.modificator(), bonus.ability);
			intimidate.add(str.modificator(), bonus.ability);
		}
		#endregion
		#region  // SAVES
		if (skill ==	actor_salvation.fortitude)		fortitude.add(value, type);
		if (skill ==	actor_salvation.reflex)			reflex.add(value, type);
		if (skill ==	actor_salvation.will)				will.add(value, type);
		#endregion
		#region // SKILLS
		if (skill ==	actor_ability.acrobatics)		acrobatics.add(value, type);
		if (skill ==	actor_ability.alchemy)			alchemy.add(value, type);
		if (skill ==	actor_ability.armors)			armors.add(value, type);
		if (skill ==	actor_ability.appraise)			appraise.add(value, type);
		if (skill ==	actor_ability.bluff)			bluff.add(value, type);
		if (skill ==	actor_ability.climb)			climb.add(value, type);
		if (skill ==	actor_ability.diplomacy)		diplomacy.add(value, type);
		if (skill ==	actor_ability.disable_device)	disableDevice.add(value, type);
		if (skill ==	actor_ability.escape)			escape.add(value, type);
		if (skill ==	actor_ability.heal)				heal.add(value, type);
		if (skill ==	actor_ability.heavy_weapons)	heavyWeapons.add(value, type);
		if (skill ==	actor_ability.intimidate)		intimidate.add(value, type);
		if (skill ==	actor_ability.light_weapons)	lightWeapons.add(value, type);
		if (skill ==	actor_ability.perception)		perception.add(value, type);
		if (skill ==	actor_ability.sense_motive)	senseMotive.add(value, type);
		if (skill ==	actor_ability.spellcraft)		spellCraft.add(value, type);
		if (skill ==	actor_ability.stealth)			stealth.add(value, type);
		if (skill ==	actor_ability.survival)			survival.add(value, type);
		if (skill ==	actor_ability.taylor)			taylor.add(value, type);
		#endregion
		#region // ACTION MODIFIERS
		if (skill ==	spd.standard_action)		standardActionSpeed.add(value, type); 
		if (skill ==	spd.move_action)			moveActionSpeed.add(value, type);
		if (skill ==	spd.swift_action)			swiftActionSpeed.add(value, type);
		if (skill ==	spd.inmediate_action)	inmediateActionSpeed.add(value, type);
		if (skill ==	spd.move_action)			moveSpeed.add(value, type);
		#endregion
		
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
				det: armorClass,
				reach:			myReach.get(),
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
				disableDevice:	disableDevice.total(),
				escape:				escape.total(),
				heal:					heal.total(),
				heavyWeapons:	heavyWeapons.total(),
				intimidate:			intimidate.total(),
				lightWeapons:	lightWeapons.total(),
				perception:			perception.total(),
				senseMotive:		senseMotive.total(),
				spellCraft:			spellCraft.total(),
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
	}
}