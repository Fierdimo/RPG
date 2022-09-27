function Equip_gears() constructor{
	slotted = [];
	function add(_gear){
		if (_gear){
		var gear = new Equipment(_gear);
		array_push(slotted, gear);
		}else array_push(slotted, noone);
	}
	
	function del(index){
		array_delete(slotted, index, 1);
	}
	
	function show(){return slotted }
}