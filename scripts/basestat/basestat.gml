function BaseStat() constructor{
	
	base = new basicStat();
		
	// modificadores
	
	ability = new basicStat();
	alchemical = new basicStat();
	armor = new basicStat();
	circumstance = new basicStat();
	competence = new basicStat();
	deflection = new basicStat();
	dodge = new basicStat();
	enhancement = new basicStat();
	insight = new basicStat();
	luck = new basicStat();
	morale = new basicStat();
	natural_armor = new basicStat();
	profane = new basicStat();
	racial = new basicStat();
	resistance = new basicStat();
	sacred = new basicStat();
	shield = new basicStat();
	size_ = new basicStat();
	untyped = new basicStat();
	
	static total = function (){		
		return	base.get() 
				+ ability.get() 
				+ alchemical.get() 
				+ armor.get() 
				+ circumstance.get() 
				+ competence.get() 
				+ deflection.get() 
				+ dodge.get() 
				+ enhancement.get() 
				+ insight.get() 
				+ luck.get() 
				+ morale.get() 
				+ natural_armor.get() 
				+ profane.get() 
				+ racial.get() 
				+ resistance.get() 
				+ sacred.get() 
				+ shield.get() 
				+ size_.get() 
				+ untyped.get();
	}
	
	function revaluate(oldValue, newValue){
		if(sign(newValue)) return max(oldValue, newValue);
		else return (oldValue + newValue)
	}
	
	function evaluate(val, value){
		ret = false
		temp = revaluate(val, value);
		if (val != temp) ret = true;
		return {
			result: ret,
			value: temp,
		}	
	}
	
	static add = function (value, type=bonus.untyped) {
		static change = {};
		switch (type){
			case bonus.base:				
				change = evaluate(base.get(), value);
				base.set(change.value);
				break;
			case bonus.alchemical:
				change = evaluate(alchemical.get(), value);
				alchemical.set(change.value);
				break;
			case bonus.armor:
				change = evaluate(armor.get(), value);
				armor.set(change.value);
				break;
			case bonus.circumstance:
				circumstance.add(value);
				change.result = true;
				break;
			case bonus.competence:
				change = evaluate(competence.get(), value);
				competence.set(change.value);
				break
			case bonus.deflection:
				change = evaluate(deflection.get(), value);
				deflection.set(change.value);
				break
			case bonus.dodge:
				dodge.add(value);
				change.result = true;
				break;
			case bonus.enhancement:
				change = evaluate(enhancement.get(), value);
				enhancement.set(change.value);
				break
			case bonus.insight:
				change = evaluate(insight.get(), value);
				insight.set(change.value);
				break
			case bonus.luck:
				change = evaluate(luck.get(), value);
				luck.set(change.value);
				break
			case bonus.morale:
				change = evaluate(morale.get(), value);
				morale.set(change.value);
				break
			case bonus.natural_armor:
				change = evaluate(natural_armor.get(), value);
				natural_armor.set(change.value);
				break
			case bonus.profane:
				change = evaluate(profane.get(), value);
				profane.set(change.value);
				break
			case bonus.racial:
				change = evaluate(racial.get(), value);
				racial.set(change.value);
				break
			case bonus.resistance:
				change = evaluate(resistance.get(), value);
				resistance.set(change.value);
				break
			case bonus.sacred:
				change = evaluate(sacred.get(), value);
				sacred.set(change.value);
				break
			case bonus.shield:
				change = evaluate(shield.get(), value);
				shield.set(change.value);
				break
			case bonus.size:
				change = evaluate(size_.get(), value);
				size_.set(change.value);
				break
			case bonus.ability:
				change = evaluate(ability.get(), value);
				ability.set(change.value);
				break
			default:
				untyped.add(value);
				change.result = true;
				break;				
		}
		
		return change.result;
	}
}