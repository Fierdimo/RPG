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
if(mainPlayer.status == "CASTING" || mainPlayer.status == "CASTING + RUN")
	if (global.pulse mod 2) colour = c_silver

draw_set_color(colour);
gpu_set_blendmode(bm_add);
draw_primitive_begin(pr_trianglefan);
draw_vertex_colour(global.origin_x, global.origin_y, c_white, 0.1);
			
	switch(global.shape) {
		case SHAPE.BURST:			
			for(var i = global.angle; i <= 360+global.angle; i++;){
			    draw_vertex_colour(global.origin_x + lengthdir_x(global.area_spread, i -45), global.origin_y + lengthdir_y(global.area_spread, i -45), colour, 0.2);
			}
			break;
		case SHAPE.CONE:			
			for(var i = global.angle; i <= 90+global.angle; i++){
			    draw_vertex_colour(global.origin_x + lengthdir_x(global.area_spread, i -45), global.origin_y + lengthdir_y(global.area_spread, i -45), colour, 0.2);
			}
			break;
		case SHAPE.SQUARE:
			for(var i = 45; i <=425; i+=(90)){
			    draw_vertex_colour(global.origin_x + lengthdir_x(global.area_spread*1.42, i), global.origin_y + lengthdir_y(global.area_spread*1.42, i), colour, 0.2);
			}			
			break;
		case SHAPE.LINE:			
			draw_primitive_end();
			//restart origin point
			draw_primitive_begin(pr_trianglefan);
			var _ngle = ( global.area_spread/60)*(160/global.area_spread)
			var newOriginX = global.origin_x + lengthdir_x(_ngle*_ngle*0.5, global.angle+90)
			var newOriginY = global.origin_y + lengthdir_y(_ngle*_ngle*0.5, global.angle+90)
			
			draw_vertex_colour(newOriginX, newOriginY, c_white, 0.1);
			draw_vertex_colour(newOriginX + lengthdir_x(_ngle*_ngle, global.angle-90), newOriginY+ lengthdir_y(_ngle*_ngle,global.angle-90), c_black, 0.2);
			
			for(var i = global.angle-_ngle; i <= global.angle; i++){
			    draw_vertex_colour(newOriginX + lengthdir_x(global.area_spread, i), newOriginY+ lengthdir_y(global.area_spread, i), colour, 0.2);
			}
			break;
			
		default:
				break;
	}	
			draw_primitive_end();
			gpu_set_blendmode(bm_normal);

if(global.search_origin){
	draw_circle(mouse_x, mouse_y, global.pulse * 10, true);
}


