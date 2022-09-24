function buttons_DnD() constructor{
	
	function nothing (a,b,c){
	}
	
	function set_function_press(func = nothing, args){
		if (func != nothing) 
		function_press = func;
		args_press = args;
	}	
	
	function set_function_release(func = nothing, args){
		if (func != nothing) 
		function_release = func;
		args_release = args;
	}	
	
	function clear(){
		button_list = [];
		gui_x= 0;
		gui_y = 0;
		hold = -1;		
		colour = c_white;
		over_button = false;
		void_image = icn_void;
	}
	
	function active_button (){
		if (hold != -1)
			return button_list[hold];
	}
	
	function set_origin(_x, _y){
		gui_x = _x;
		gui_y = _y;
	}
	
	function add(center_x, center_y, _sprite = btn_void, _alt_sprite = btn_void, _data= noone, _hld_txt = "", _anim = -1){
		array_push(button_list, {
			x: center_x,
			y: center_y,
			sprite: _sprite,
			alt_sprite: _alt_sprite,
			anim: _anim,
			data: _data,
			holding_txt: _hld_txt,
		})
	}
	
	function draw_buttons(){
		for(var i = 0; i< array_length(button_list); i++){
			var button = button_list[i];			
			// animation 
			if (button.anim != -1){				
				button.anim += sprite_get_speed(button.sprite)/ (FRAME_RATE);	
				if (button.anim >= sprite_get_number(button.sprite)) button.anim = 0;
			}			
			//draw sprite
			draw_sprite(button.sprite, button.anim, gui_x+button.x, gui_y+button.y);			
		}		
	}
	
	function draw_while_drag(){
		if(hold != -1){
			draw_sprite_ext(button_list[hold].alt_sprite, button_list[hold].anim, device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),1.5, 1.5, 0, colour, 1);
			draw_text(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),button_list[hold].holding_txt)
			
		}
	}
	
	function execute_on_event(func, args){
			var click_x = device_mouse_x_to_gui(0);
			var click_y = device_mouse_y_to_gui(0);
		for(var i = 0; i< array_length(button_list); i++){
				if((click_x < gui_x+button_list[i].x+ (sprite_get_width(button_list[i].sprite)/2)) && (click_x > (gui_x+button_list[i].x- (sprite_get_width(button_list[i].sprite)/2)))
				&& (click_y < gui_y+button_list[i].y+ (sprite_get_height(button_list[i].sprite)/2)) && (click_y > (gui_y+button_list[i].y- (sprite_get_height(button_list[i].sprite)/2)))
				){					
						script_execute(func,i , args);
						return i;
					}
			}
			return -1;
	}

	function push_buttons(){
		if(mouse_check_button(mb_left)){			
			var pressed_button = execute_on_event(function_press, args_press)
				if(pressed_button != -1){
					if(hold == -1 && (button_list[pressed_button].data)) 
					hold = pressed_button;
				} else colour = c_white;
		}
		
		
		if(mouse_check_button_released(mb_left)){
			//detectar en que otro boton cae 
			execute_on_event(function_release, args_release)
			//show_debug_message(string(hold)+" >>> " +string(released_button));
			//===========fin==============
			hold = -1;
		}
	}
	
	function_press = nothing;
	function_release = nothing;
	clear();
		
}