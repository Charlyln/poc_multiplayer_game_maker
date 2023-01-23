#region // basics

move_speed = 1
is_moving = false
is_other_player = false
dying = false

color = c_black
cooldown = 0
weapon_cooldown = 15
is_shooting = false
magazine_capacity = 18
bullet_in_magazine = magazine_capacity
projectile = 1

press = function (key) {
	return keyboard_check( ord(key))
	
}

#endregion