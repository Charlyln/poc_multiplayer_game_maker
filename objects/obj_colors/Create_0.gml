colors = [
	0,
	83858608,
	8388608,
	4235519,
	32768,
	128
]




create_button = function(color, index) {
	
	new_instance = instance_create_layer(x + index * 100,y, "Instances", obj_button)
	new_instance.color = color
    
}

array_foreach(colors, create_button);