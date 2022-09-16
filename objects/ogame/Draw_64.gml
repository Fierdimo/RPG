draw_set_halign(fa_left)
draw_set_font(GUI);

draw_text(10,87, Actors[target].myName+" >> " + string(Actors[target].distance)+" mts")
with(Actors[0]){	
	draw_healthbar(10,40,200,50,myRelativeHP, c_yellow, c_teal, c_green,0,true,true);
	draw_text(30,47, string(myHP))
	
	if(myTempHP){
		draw_healthbar(10,60,200,70,myRelativeHPTemp, c_black, c_yellow, c_orange, 0,false,true);
		draw_text(30,67, string(myTempHP))
	}
}