function Animate(){
	
	var _totalFrameIndex = sprite_get_number(sprite_index)/4;
	
	image_index =  local_frame + (direction*_totalFrameIndex);
	local_frame += sprite_get_speed(sprite_index) / FRAME_RATE;	
	
	if (local_frame >= _totalFrameIndex) local_frame = 0;
	
	return local_frame
	
}