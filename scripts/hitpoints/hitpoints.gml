function HitPoints() constructor{
	
	base = new basicStat();	
	marked = new basicStat();
	max_temp = new basicStat();
	temporal = new basicStat();
	
	function add(value, type, maxVal){
		switch(type){
			case bonus.base:
				base.add(value);
				break;
			case bonus.temporal:
				temporal.add(value);
				if(maxVal) max_temp.set(maxVal);
				break;
			case bonus.marked:
				marked.add(value);
				break;
			case bonus.maxHP:
				max_temp.add(value);
				break;
			default:
				break;
		}		
	}
	function showme(){
		return{
				total: marked.get()+temporal.get(),
				base: base.get(),
				temporal: temporal.get(),
				marked: marked.get(),
				max_temp: max_temp.get(),
			}
	}
}