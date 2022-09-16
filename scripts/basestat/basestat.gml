function BaseStat() constructor{
	
	base = new basicStat();
		
	// modificadores
	
	abil = new basicStat();
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
	size = new basicStat();
	untyped = new basicStat();
	
	static total = function (){		
		return	base.get() 
				+ abil.get() 
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
				+ size.get() 
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
	
	static add = function (value, type=UNTYPED) {
		static change = {};
		switch (type){
			case BASE:				
				change = evaluate(base.get(), value);
				base.set(change.value);
				break;
			case ALCHEMICAL:
				change = evaluate(alchemical.get(), value);
				alchemical.set(change.value);
				break;
			case ARMOR:
				change = evaluate(armor.get(), value);
				armor.set(change.value);
				break;
			case CIRCUMSTANCE:
				circumstance.add(value);
				change.result = true;
				break;
			case COMPETENCE:
				change = evaluate(competence.get(), value);
				competence.set(change.value);
				break
			case DEFLECTION:
				change = evaluate(deflection.get(), value);
				deflection.set(change.value);
				break
			case DODGE:
				dodge.add(value);
				change.result = true;
				break;
			case ENHANCEMENT:
				change = evaluate(enhancement.get(), value);
				enhancement.set(change.value);
				break
			case INSIGHT:
				change = evaluate(insight.get(), value);
				insight.set(change.value);
				break
			case LUCK:
				change = evaluate(luck.get(), value);
				luck.set(change.value);
				break
			case MORALE:
				change = evaluate(morale.get(), value);
				morale.set(change.value);
				break
			case NATURAL_ARMOR:
				change = evaluate(natural_armor.get(), value);
				natural_armor.set(change.value);
				break
			case PROFANE:
				change = evaluate(profane.get(), value);
				profane.set(change.value);
				break
			case RACIAL:
				change = evaluate(racial.get(), value);
				racial.set(change.value);
				break
			case RESISTANCE:
				change = evaluate(resistance.get(), value);
				resistance.set(change.value);
				break
			case SACRED:
				change = evaluate(sacred.get(), value);
				sacred.set(change.value);
				break
			case SHIELD:
				change = evaluate(shield.get(), value);
				shield.set(change.value);
				break
			case SIZE:
				change = evaluate(size.get(), value);
				size.set(change.value);
				break
			case ABILITY:
				change = evaluate(abil.get(), value);
				abil.set(change.value);
				break
			default:
				untyped.add(value);
				change.result = true;
				break;				
		}
		
		return change.result;
	}
}