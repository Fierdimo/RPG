function Equip_gears() constructor{
	equiped = [];
	function add(_gear){
		var gear = new Equipment(_gear);
		array_push(equiped, gear);
	}
	
	function del(index){
		array_delete(equiped, index, 1);
	}
	
	function show(){return equiped }
}