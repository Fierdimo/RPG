function HitPoints() constructor{
	
	base = new basicStat();
	temporal = new basicStat();
	
	function add(value, type){
		switch(type){
			case bonus.base:
				base.add(value);
				break;
			case bonus.temporal:
				temporal.add(value);
				break;
			default:
				break;
		}		
	}
	
	function showme(){
		return{
				base: base.get(),
				temporal: temporal.get(),
			}
	}
}