#region // connect

//network_connect_raw(global.client, global.address, global.port);

client_id = uuid_generate()
player_x = obj_player.x
player_y = obj_player.y
other_players = []

create_new_player = function(players) {
	
	show_debug_message(players[0].x)
	
	
    instance_create_layer(players[0].x +100, players[0].y+100, "lyr_instances", obj_other_player)
}

connect_data = ds_map_create()
ds_map_add(connect_data, "id", client_id)
ds_map_add(connect_data, "event", "connect")
ds_map_add(connect_data, "x", obj_player.x)
ds_map_add(connect_data, "y", obj_player.y)
send_to_server(connect_data)

#endregion