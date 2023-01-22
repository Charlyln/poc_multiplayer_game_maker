global.port = 80
//global.address = "192.168.1.12"
global.address = "pocwsserver.herokuapp.com"
//global.ws_client = network_create_socket(network_socket_udp);
global.player_id = uuid_generate()
global.player_name = ""
global.wsss_client = network_create_socket(network_socket_ws)
network_connect_raw_async(global.wsss_client, "ws://" + global.address, global.port)
//network_connect_raw_async(global.ws_client, global.address, global.port)
randomise()

room_goto_next()
