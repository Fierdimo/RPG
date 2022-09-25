direction = 3;

x_speed = 0;
y_speed = 0;

local_frame = 0;
input_magnitude = 0;

touched = false;
action= false;




//motor del dado para el jugador
/*
randomize();
d20Result = 0;
d20Timer = time_source_create(time_source_game, 6, time_source_units_seconds, rollD20, [oPlayer], -1, time_source_expire_after);
time_source_start(d20Timer);
*/
//simulacion de base de datos
db = {
	
	name:				"Fierdimo",
	
	hitPoints:			0,
	hitPointsMarked:	100,
	hitPointsTemp:		0,
	
	armor_class:		10,
	size: size.medium,
	
	fue:			20,
	dex:			16,
	con:			12,
	int:			20,
	sab:			10,
	car:			20,
	
	fortitude:		0,
	reflex:			0,
	will:				0,
				
	acrobatics:			0,
	alchemy:				0,	
	armors:				0,
	appraise:			0,
	bluff:					0,
	climb:					0,
	diplomacy:			0,
	disableDevice:	0,
	escape:				0,
	heal:					0,
	heavyWeapons:	0,
	intimidate:			0,
	lightWeapons:	0,
	perception:			0,
	senseMotive:		0,
	spellCraft:			0,
	stealth:				0,
	survival:				0,
	taylor:					0,
	
	standardActionSpeed:	0,
	swiftActionSpeed:			0,
	inmediateActionSpeed:		0,
	moveActionSpeed:			0,
	
	walkSpeed:					1.2,
	dashMultiplicator:		2,
	runMultiplicator:			4, 

	gears_db: [
		{
			maxiimum : 2,
			content: [
			{
				code:003, 
				playerDefined: ["A"], 
				experience: 0				
			},
			]
		},				
		{
			maxiimum : 1,
			content: []
		},
		{
			maxiimum : 1,
			content: []
		},		
		{
			maxiimum : 1,
			content: []
		},		
		{
			maxiimum : 1,
			content: []
		},
		{
			maxiimum : 1,
			content: []
		},
		{
			maxiimum : 1,
			content: [
				{
				code:003, 
				playerDefined: ["A"], 
				experience: 0				
			},
			]
		},
		{
			maxiimum : 1,
			content: []
		},
		{
			maxiimum : 1,
			content: [
				{
					code:002, 
					playerDefined: [6,0,10,10,0,0,"w"], 
					experience: 0				
				},]
		},		
		{
			maxiimum : 12,
			content: [
				{
					code:002, 
					playerDefined: [6,0,10,10,0,0,"C"], 
					experience: 0				
				},
				{
					code:002, 
					playerDefined: [6,0,10,10,0,0,"C"], 
					experience: 0				
				},
					{
					code:002, 
					playerDefined: [6,0,10,10,0,0,"C"], 
					experience: 0				
				},
					{
					code:002, 
					playerDefined: [6,0,10,10,0,0,"C"], 
					experience: 0				
				},
					{
					code:002, 
					playerDefined: [6,0,10,10,0,0,"C"], 
					experience: 0				
				},
				
			]
		},
	],

}

//--------Dialogue Stuff

dialog = false
spd = 2;
/*
myPortrait			= spr_portrait_player;
myVoice				= snd_voice2;
myFont				= fnt_dialogue;

myPortraitTalk		= spr_portrait_examplechar_mouth;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
myPortraitIdle		= spr_portrait_examplechar_idle;
*/

if (variable_global_exists("fromPause")){
	if(global.fromPause){
		x = global.my_x
		y = global.my_y 
		direction = global.my_direction
	}
}




