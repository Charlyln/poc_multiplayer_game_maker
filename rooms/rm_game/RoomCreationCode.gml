global.instance_id = instance_create_layer(irandom_range(200, 1100), irandom_range(100, 600), "lyr_instances", obj_player)
global.player_id = uuid_generate()

global.instance_id.player_id = global.player_id
global.instance_id.player_name = global.player_name
global.instance_id.color = global.player_color

instance_create_layer(500, 200, "lyr_instances", obj_multiplayer_client)