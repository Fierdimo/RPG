enum size {
	fine,
	diminutive,
	tiny,
	small,
	medium,
	large_tall,
	large_long,
	huge_tall,
	huge_long,
	gargantuan_tall,
	gargantuan_long,
	colossal_tall,
	colossal_long,
	
	reach,
	modifier,
	special,
	stealth,
	fly,
	
}
	
enum size_modifier {
	fine = 8,
	diminutive = 4,
	tiny = 2,
	small = 1,
	medium = 0,
	large = -1,
	huge = -2,
	gargantuan= -4,
	colossal = -8	
}
enum special_size_modifier {
	fine = -8,
	diminutive = -4,
	tiny = -2,
	small = -1,
	medium = 0,
	large = 1,
	huge = 2,
	gargantuan = 4,
	colossal = 8	
}
enum size_fly{
	fine = 8,
	diminutive = 6,
	tiny = 4,
	small = 2,
	medium = 0,
	large = -2,
	huge = -4,
	gargantuan = -6,
	colossal = -8	
}
enum size_stealth{
	fine = 16,
	diminutive = 12,
	tiny = 8,
	small = 4,
	medium = 0,
	large = -4,
	huge = -8,
	gargantuan = -12,
	colossal = -16	
}
enum size_reach{
	fine = 0,
	diminutive = 0,
	tiny = 0,
	small = 5,
	medium = 5,
	large_tall = 10,
	large_long = 5,
	huge_tall = 15,
	huge_long = 10,
	gargantuan_tall = 20,
	gargantuan_long = 15,
	colossal_tall = 30,
	colossal_long = 20
}