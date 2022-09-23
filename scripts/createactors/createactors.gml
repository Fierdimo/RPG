function createActors(actor_list_db, actor_instance_array = []){
	for(var position = 0; position < array_length(actor_list_db); position++){
		var newActor = instance_create_layer(actor_list_db[position]._X_, actor_list_db[position]._y_, "Instances", actor_list_db[position].object, {
				myArrayPosition: position,
				myBuffs:[],
				myPendigBuffs: [],
				pendingAction: {},
				myName: actor_list_db[position].name,
				selected: false,
				changed: true,
				uni_sAdd: shader_get_uniform(Shader1, "sAdd"),
				buffTimer: get_timer(),
				doubleClick: true,
				distance: 0,
				status: state.bored,
			});			
		with(newActor) buildActor();
		array_push(actor_instance_array, newActor);				
	}
	return actor_instance_array;
}