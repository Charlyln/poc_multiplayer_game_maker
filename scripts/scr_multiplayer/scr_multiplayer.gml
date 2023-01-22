function send_to_server(data){
	
	buffer = buffer_create(200, buffer_fixed, 200);
	json_data = json_encode(data)
	ds_map_destroy(data)

	buffer_seek(buffer, buffer_seek_start, 0)
	buffer_write(buffer, buffer_text, json_data)
	
	 //var t_buffer = buffer_create(100, buffer_fixed, 100);
     //       buffer_seek(t_buffer, buffer_seek_start, 0);
     //       buffer_write(t_buffer , buffer_text,json_data);
	network_send_raw(global.ws_client, buffer, buffer_tell(buffer))
	
	//network_send_packet(global.ws_client, t_buffer, buffer_tell(t_buffer))
	
	
}