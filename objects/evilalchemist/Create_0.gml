touched = false;
action = false;

db = {
	
	name:				"Evil alchemist",
	
	hitPoints:			0,
	hitPointsTemp:		0,
	
	armor_class:		10,
	size: size.medium,
	
	fue:			10,
	dex:			10,
	con:			12,
	int:			10,
	sab:			10,
	car:			20,
	
	fortitude:		0,
	reflex:			0,
	will:			0,
				
	acrobatics:		0,
	alchemy:		0,
	armors:			0,
	appraise:		0,
	bluff:			0,
	climb:			0,
	diplomacy:		0,
	disableDevice:	0,
	escape:			0,
	heal:			0,
	heavyWeapons:	0,
	intimidate:		0,
	lightWeapons:	0,
	perception:		0,
	senseMotive:	0,
	spellCraft:		0,
	stealth:		0,
	survival:		0,
	taylor:			0,
	
	standardActionSpeed:	0,
	swiftActionSpeed:		0,
	inmediateActionSpeed:		0,
	moveActionSpeed:		0,
	
	walkSpeed:				0.5,
	dashMultiplicator:		2, 
	runMultiplicator:		4, 
	gears_db: [
		{
			maxiimum : 2,
			content: [
				{
					code:002, 
					playerDefined: [6,0,10,10,0,0,""], 
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
			maxiimum : 12,
			content: [
				{
					code:002, 
					playerDefined: [6,0,10,10,0,0,"w"], 
					experience: 0				
				},
			]
		},
	],
}
/*
myPortrait			= spr_portrait_examplechar;
myVoice				= snd_voice2;
myFont				= fnt_dialogue;

myPortraitTalk		= spr_portrait_examplechar_mouth;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
myPortraitIdle		= spr_portrait_examplechar_idle;
*/