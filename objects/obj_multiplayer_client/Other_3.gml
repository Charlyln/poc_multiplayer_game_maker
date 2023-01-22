disconnect_data = ds_map_create()
ds_map_add(disconnect_data, "id", client_id)
ds_map_add(disconnect_data, "event", "disconnect")
send_to_server(disconnect_data)











