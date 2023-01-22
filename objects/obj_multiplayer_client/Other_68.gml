if (async_load[? "size"] > 0) {
	var buff = async_load[? "buffer"]
	buffer_seek(buff, buffer_seek_start, 0)
	var response = buffer_read(buff, buffer_string)
	
	var parsed = json_parse(response)
	show_debug_message(parsed)
	//other_players = parsed
	
	switch (parsed.event)
{
    case "connect":
	//other_players = parsed.players
    create_new_player(parsed.players)
    break;

    case "move":
         break;
		 
		  case "disconnect":
         break;
    
}
}
