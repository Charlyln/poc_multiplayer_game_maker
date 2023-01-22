#region // player_move

if (global.instance_id.is_moving) {
	
	player_x = global.instance_id.x
	player_y = global.instance_id.y
	data = ds_map_create()

	ds_map_add(data, "id", client_id)
	ds_map_add(data, "event", "move")
	ds_map_add(data, "x", global.instance_id.x)
	ds_map_add(data, "y", global.instance_id.y)

	send_to_server(data)
	
}



#endregion