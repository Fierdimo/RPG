function refreshTimers(){
var currentTime = get_timer() - actionTimer ;
if(currentTime>= ACTION_TIMER){
	
	global.pulse += ACTION_TIME_REFRESH*2.5;
	if (global.pulse > 1) global.pulse = 0;
	
	if(global.timerStandardAction >= ACTION_TIME_REFRESH)	global.timerStandardAction =	max(0, global.timerStandardAction -	ACTION_TIME_REFRESH);
	if(global.timerMoveAction >=		ACTION_TIME_REFRESH)	global.timerMoveAction =		max(0, global.timerMoveAction -		ACTION_TIME_REFRESH);
	if(global.timerSwiftAction >=		ACTION_TIME_REFRESH)	global.timerSwiftAction =		max(0, global.timerSwiftAction -		ACTION_TIME_REFRESH);
	if(global.timerCounterAction >=	ACTION_TIME_REFRESH)	global.timerCounterAction =	max(0, global.timerCounterAction -	ACTION_TIME_REFRESH);
	actionTimer = get_timer();
}
}