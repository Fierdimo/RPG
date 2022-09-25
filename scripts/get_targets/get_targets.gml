function get_targets(data){
	var targets = []
			with(all){
				in_range = get_range(data, id);
				
				if (selected && get_range(data, id)){
					if (array_length(targets) == 0) array_push(targets, id);
					else{
						for(var inside = 0; inside < array_length(targets); inside++){
							if(id.distance < targets[inside].distance) {
								array_insert(targets, inside, id);
								break;							
							}
							array_push(targets, id);
							break;
						}
					}
				}
			}
	return targets;
}