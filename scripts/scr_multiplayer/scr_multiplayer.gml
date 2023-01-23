function send_to_server(data){
	
	buffer = buffer_create(200, buffer_fixed, 200);
	json_data = json_encode(data)
	ds_map_destroy(data)
	buffer_seek(buffer, buffer_seek_start, 0)
	buffer_write(buffer, buffer_text, json_data)

	network_send_packet(global.ws_client, buffer, buffer_tell(buffer))
}