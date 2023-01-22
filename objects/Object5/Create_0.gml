colors = [
	c_black,
	c_navy,
	c_orange,
	c_green,
	c_maroon
]




create_button = function(color, index) {
	
	new_instance = instance_create_layer(x + index * 100,y, "Instances", obj_start)
	new_instance.color = color
    
}

array_foreach(colors, create_button);












