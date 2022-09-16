function basicStat(val = 0) constructor{
	_val = val;
	static add = function(val){
		_val += val;
	}
	static get = function(){
		return _val;
	}
	static set = function(val){
		_val = val;
	}
	
}