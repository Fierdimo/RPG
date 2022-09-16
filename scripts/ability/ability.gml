function Ability(value = 10): BaseStat(value) constructor{
	
	static modificator = function (){
		return floor((total() - 10)/2);
	}
		
}