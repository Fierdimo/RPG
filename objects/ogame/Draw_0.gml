draw_set_font(small);
draw_set_valign(fa_center)
draw_set_halign(fa_center)
draw_set_color(c_white);
var indx = 0;
while(indx < array_length(Actors)){
	with(Actors[indx]){
		draw_text(x,y-15, string(myHP)+"+"+string(myTempHP))
		draw_healthbar(x-8,y-10,x+8,y-12,myRelativeHP,c_white, c_black, c_green,0,true,true);
		draw_healthbar(x-8,y-13,x+8,y-15,myRelativeHPTemp,c_white, c_navy, c_red,0,true,true);
		
		if selected {
			shader_set(Shader1);
			shader_set_uniform_f(uni_sAdd, sAdd);
			}
		draw_self();
		shader_reset();
		draw_text(x,y,status);
		}
	indx++;
}
//===================================================== AREA DRAWS =========================================================
if (global.in_range) var colour = c_aqua;
else var colour = c_red;

draw_set_color(colour);
if (global.shape = SHAPE.CONE) {
	gpu_set_blendmode(bm_add);

		draw_primitive_begin(pr_trianglefan);
		draw_vertex_colour(global.origin_x, global.origin_y, c_black, 0.1);
		for(var i = global.angle; i <= 45+global.angle; ++i;)
		{
		    draw_vertex_colour(global.origin_x + lengthdir_x(global.area_spread, 90 * i / 45), global.origin_y + lengthdir_y(global.area_spread, 90 * i / 45), colour, 0.2);
		}
		draw_primitive_end();
	gpu_set_blendmode(bm_normal);
}
if(global.search_origin){
	draw_circle(mouse_x, mouse_y, global.pulse * 10, true);
}


