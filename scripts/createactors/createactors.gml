function createActors(actor_list_db, actor_instance_array = []){
	for(var position = 0; position < array_length(actor_list_db); position++){
		var temp_buff = new Buff();
		var newActor = instance_create_layer(actor_list_db[position]._X_, actor_list_db[position]._y_, "Instances", actor_list_db[position].object, {
				myArrayPosition: position,
				myBuffs: temp_buff,
				pendingAction: {},
				myName: actor_list_db[position].name,
				selected: false,
				in_range: false,
				changed: true,
				uni_sAdd: shader_get_uniform(shad_white, "sAdd"),
				uni_sRed: shader_get_uniform(shad_white, "sRed"),
				doubleClick: true,
				distance: 0,
				status: state.bored,
				myRelativeHP: 0,
				myRelativeHPTemp: 0,
			});			
			
		with(newActor) buildActor();
		
		array_push(actor_instance_array, newActor);				
	}
	return actor_instance_array;
}