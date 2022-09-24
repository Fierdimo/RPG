/// @desc Converts x,y in game world to gui x,y
/// @param {real} _x x position in game world
/// @param {real} _y y position in game world
/// @returns {array<Real>} array contains x,y position in gui
function coordinates_to_gui(_x, _y){
	
	//var cl = camera_get_view_x(view_camera[0])
	//var ct = camera_get_view_y(view_camera[0])

	//var off_x = _x - cl 
	//var off_y = _y - ct 
	// convert to gui

	var off_x_percent = _x / camera_get_view_width(view_camera[0])
	var off_y_percent =  _y / camera_get_view_height(view_camera[0])

	var gui_x = off_x_percent * display_get_gui_width()*0.5
	var gui_y = off_y_percent * display_get_gui_height()*0.5

	
	return {x: gui_x, y: gui_y};

}