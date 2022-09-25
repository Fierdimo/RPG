/// @param <array>
/// @param <item> to search
///@param OPTIONAL, Eliminate all items found, false = 1° found

function seek_in_array_and_destroy(array, item, killThemAll = true){
	for(var index = 0; index < array_length(array); index ++){
		if(array[index] == item){
			array_delete(array, index, 1);
			if(!killThemAll) return;			
		}
	}
}