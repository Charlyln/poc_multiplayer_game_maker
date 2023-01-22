#region // move

move_up =  press("Z") || press("W")
move_left = press("A") || press("Q")
move_down = press("S")
move_right = press("D")

if (move_up) y -= move_speed
if (move_down) y += move_speed
if (move_left) x -= move_speed
if (move_right) x += move_speed

#endregion