function convertToStatic(_value_){
	var newValue = extractByStat(_value_);
	var newFixed = extractByStat(_value_, true);
	_value_.magnitude = STATIC_VALUE;
	_value_.increase = newValue;
	_value_.fixed = newFixed;
}