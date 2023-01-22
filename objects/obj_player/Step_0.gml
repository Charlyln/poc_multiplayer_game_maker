#region // move

if (!is_other_player) {
	move_up =  press("Z") || press("W")
	move_left = press("A") || press("Q")
	move_down = press("S")
	move_right = press("D")
	
	is_moving = move_up ||move_left ||move_down ||move_right

	if (move_up) y -= move_speed
	if (move_down) y += move_speed
	if (move_left) x -= move_speed
	if (move_right) x += move_speed
}


#endregion