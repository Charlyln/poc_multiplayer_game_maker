#region // player_move

if (obj_player.x != player_x || obj_player.y != player_y) {
	
	player_x = obj_player.x
	player_y = obj_player.y
	data = ds_map_create()

	ds_map_add(data, "id", client_id)
	ds_map_add(data, "event", "move")
	ds_map_add(data, "x", obj_player.x)
	ds_map_add(data, "y", obj_player.y)

	send_to_server(data)
	
}



#endregion