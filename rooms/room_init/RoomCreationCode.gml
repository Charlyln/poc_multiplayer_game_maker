global.port = 8080
global.address = "192.168.1.12"
global.ws_client = network_create_socket(network_socket_udp);
global.player_id = uuid_generate()
global.player_name = ""
//global.ws_client = network_create_socket(network_socket_wss)
network_connect_raw_async(global.ws_client, global.address, global.port)
randomise()

room_goto_next()
