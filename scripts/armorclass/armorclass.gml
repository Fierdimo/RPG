function ArmorClass(): BaseStat() constructor{
	
	base.add(10, BASE)
	
	static touch = function (shieldTo = false){		
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
				+ size.get() 
				+ untyped.get();
		if(shieldTo) result += shield.get();
		return result
	}
	
	static flatFooted = function (abilityTo = false){		
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
				+ size.get() 
				+ untyped.get();
				
		if (abilityTo) result += (+ ability.get() 
											+ shield.get()
											+ dodge.get())
							
		return result
	}
}