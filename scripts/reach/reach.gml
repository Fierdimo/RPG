function Reach() constructor{
	
	val = new basicStat();
	temp = new basicStat();
	
	static add = function(value, type){
		switch(type){
			case bonus.natural:
				val.set(value);
				break;
				
			case bonus.enhancement:
				val.add(value);
				break;
				
			case bonus.temporal:
				temp.set(value);
				break
			
			default:
		}
	}
	
	static get = function (){
		return (val.get() + temp.get());
	}

}