function Buff() : ArrayList() constructor{
	
	//target 
	//value
	//time
	//type
	
	function add(_buff){
		var item = {};
		if(variable_struct_exists(_buff, "target"))
			item.target = _buff.target
		if(variable_struct_exists(_buff, "value"))
			item.value = _buff.value
		if(variable_struct_exists(_buff, "type"))
			item.type = _buff.type
		if(variable_struct_exists(_buff, "time"))
			item.time = {increase: _buff.time.increase, magnitude: _buff.time.magnitude}
			
		array_push(item_list, item);
	}
}