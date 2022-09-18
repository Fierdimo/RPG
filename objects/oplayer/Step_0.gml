if(status == "CASTING"){
		local_frame = Animate();
}
else{
	right_key = keyboard_check(vk_right);
	left_key = keyboard_check(vk_left);
	up_key = keyboard_check(vk_up);
	down_key = keyboard_check(vk_down);

	x_speed = (right_key - left_key) * walkSpeed;
	y_speed = (down_key - up_key) * walkSpeed;
	//Diagonales mas lentas
	if(x_speed != 0 && y_speed != 0){
		x_speed *= 0.75;
		y_speed *= 0.75;
	}

	if(place_meeting(x+x_speed, y, all)) x_speed = 0;
	if(place_meeting(x, y+y_speed, all)) y_speed = 0;


	input_magnitude = (right_key - left_key != 0) || (down_key - up_key != 0);
	if(input_magnitude !=0){
		direction =round(point_direction(0, 0, right_key - left_key, down_key - up_key)/90);
		x += x_speed;
		y += y_speed;
		
	}

	local_frame = Animate();
	
	
	
	global.my_x = x;
	global.my_y = y;
	global.my_direction = direction;
}

