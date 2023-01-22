#region // connect

//network_connect_raw(global.client, global.address, global.port);

client_id = global.player_id
player_x = global.instance_id.x
player_y = global.instance_id.y



drop_player = function(player) {
	if (player.id != client_id) {
		new_player = instance_create_layer(player.x, player.y, "lyr_instances", obj_player)
		//show_debug_message(player_instance_id)
		new_player.is_other_player = true
		new_player.player_id = player.id
		show_debug_message("other player drop")
	}
    
}

move_player = function(player) {
for (var i = 0; i < instance_number(obj_player); ++i;)
{
    player_instanceid = instance_find(obj_player,i);
	show_debug_message(player_instanceid.player_id)
	if (player_instanceid.player_id == player.id && player.id != client_id) {
		player_instanceid.x = player.x
		player_instanceid.y = player.y
		show_debug_message("other player is moving")
	}
}
    
}

destroy_player = function(player) {
for (var i = 0; i < instance_number(obj_player); ++i;)
{
    player_instanceid = instance_find(obj_player,i);
	show_debug_message(player_instanceid.player_id)
	if (player_instanceid.player_id == player.id) {
		instance_destroy(player_instanceid)
		show_debug_message("other player destroyed")
	}
}
    
}



create_new_players = function(players) {
    array_foreach(players, drop_player);
}






connect_data = ds_map_create()
ds_map_add(connect_data, "id", client_id)
ds_map_add(connect_data, "event", "connect")
ds_map_add(connect_data, "x", player_x)
ds_map_add(connect_data, "y", player_y)
send_to_server(connect_data)

#endregion