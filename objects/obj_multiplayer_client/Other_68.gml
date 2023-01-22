if (async_load[? "size"] > 0) {
	var buff = async_load[? "buffer"]
	buffer_seek(buff, buffer_seek_start, 0)
	var response = buffer_read(buff, buffer_string)
	var parsed = json_parse(response)

	
switch (parsed.event) {
	case "connect":
		create_new_players(parsed.players);
		break;

	case "move":
		move_player(parsed.player);
		break;
		
	case "bullet":
		create_bullet(parsed.player);
		break;

	case "disconnect":
		destroy_player(parsed.player);
		break;
}

}
