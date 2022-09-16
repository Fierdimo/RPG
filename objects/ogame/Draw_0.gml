draw_set_font(small);
draw_set_valign(fa_center)
draw_set_halign(fa_center)
var indx = 0;
while(indx < array_length(Actors)){
	with(Actors[indx]){
		draw_text(x,y-15, string(myHP))
		draw_healthbar(x-8,y-10,x+8,y-12,myRelativeHP,c_white, c_black, c_green,0,true,true);
		
		if selected {
			shader_set(Shader1);
			shader_set_uniform_f(uni_sAdd, sAdd);
			}
			draw_self();
			shader_reset();
		}
	indx++;
}

