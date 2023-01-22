#region // move

if (!is_other_player) {
	move_up = press("Z") || press("W");
	move_left = press("A") || press("Q");
	move_down = press("S");
	move_right = press("D");

	is_moving = move_up || move_left || move_down || move_right;

	if (move_up) y -= move_speed;
	if (move_down) y += move_speed;
	if (move_left) x -= move_speed;
	if (move_right) x += move_speed;

	shoot = mouse_check_button(mb_left);

	if (shoot && cooldown < 1 && bullet_in_magazine > 0) {
		is_shooting = true;
		for (var i = 0; i < projectile; i += 1) {
			instance_create_layer(x, y, "BulletsLayer", obj_bullet);
			cooldown = weapon_cooldown;
			
			data = ds_map_create()

			ds_map_add(data, "id", global.player_id)
			ds_map_add(data, "event", "bullet")
			ds_map_add(data, "x", global.instance_id.x)
			ds_map_add(data, "y", global.instance_id.y)
			ds_map_add(data, "mouse_x", mouse_x)
			ds_map_add(data, "mouse_y", mouse_y)

			send_to_server(data)
		}

		if (bullet_in_magazine < 1 && !reloading) {
			alarm[0] = 20;
			reloading = true;
		}
	} 

	cooldown -= 1;
}



#endregion