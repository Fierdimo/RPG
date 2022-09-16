function HitPoints() constructor{
	
	base = new basicStat();	
	marked = new basicStat();
	max_temp = new basicStat();
	temporal = new basicStat();
	
	function add(value, type, maxVal){
		switch(type){
			case BASE:
				base.add(value);
				break;
			case TEMP:
				temporal.add(value);
				if(maxVal) max_temp.set(maxVal);
				break;
			case MARKED:
				marked.add(value);
				break;
			case MAX_TEMP:
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