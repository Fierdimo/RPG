function ArrayList() constructor{
	item_list = [];
	function add(_buff){
		array_push(item_list, _buff);
	}
	
	function del(index){
		array_delete(item_list, index, 1);
	}
	
	function len(){ return array_length(item_list);}
	function item(position) {return item_list[position]}
	function list(){return item_list }
}