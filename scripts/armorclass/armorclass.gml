function ArmorClass(): BaseStat() constructor{
	
	base.add(10, bonus.base)
	
	static touch = function (shieldTo = false){		
		#region // RETURN WITHOUT  ARMORS
		result =  base.get() 
				+ ability.get() 
				+ alchemical.get() 
				+ circumstance.get() 
				+ competence.get() 
				+ deflection.get() 
				+ dodge.get() 
				+ enhancement.get() 
				+ insight.get() 
				+ luck.get() 
				+ morale.get() 
				+ profane.get() 
				+ racial.get() 
				+ resistance.get() 
				+ sacred.get()  
				+ size_.get() 
				+ untyped.get();
		
		if(shieldTo) result += shield.get();
		#endregion
		return result
	}
	
	static flatFooted = function (abilityTo = false){		
		#region // RETURN WITHOUT DEX
		result =  base.get()  
				+ alchemical.get() 
				+ armor.get() 
				+ circumstance.get() 
				+ competence.get() 
				+ deflection.get() 
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
				
		if (abilityTo) result += (+ ability.get() 
											+ shield.get()
											+ dodge.get())
		#endregion
		return result
	}
}