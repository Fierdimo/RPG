function get_target_from_cursor(){
	var coll = collision_point(mouse_x, mouse_y, all,true,false)
		if coll{
			with(all) if !(keyboard_check(vk_control) || keyboard_check_direct(vk_lshift))  selected = false;
			
			if(keyboard_check_direct(vk_lshift)) coll.selected = false;
			else coll.selected = true;
			
		}
		return coll;
}