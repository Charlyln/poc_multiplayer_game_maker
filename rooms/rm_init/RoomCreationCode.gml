global.port = 80
global.address = "192.168.1.12"
//global.address = "pocwsserver.herokuapp.com"
global.player_id = uuid_generate()
global.player_name = ""
global.ws_client = network_create_socket(network_socket_ws)
network_connect_raw_async(global.ws_client, "ws://" + global.address, global.port)
randomise()

room_goto_next()
