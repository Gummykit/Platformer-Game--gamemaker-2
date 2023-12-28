if (instance_place(x, y, obj_ladder)){
	
	if(keyboard_check(vk_up) || keyboard_check(vk_down)){
		climbing = true;
		vspeed = 0;
		gravity = 0;
		sprite_index = spr_climbing;
	} 
}
else {
		climbing = false;
		sprite_index = spr_player;
	}

if (climbing){
		if (keyboard_check(vk_up)){
			y -= climb_speed;
			
			
		}
	
		if (keyboard_check(vk_down)){
			y += climb_speed;
			
			

		}
	
	
		if (instance_place(x, y, obj_block)){
			climbing = false;
			gravity = 1;
			sprite_index = spr_player;
			
			
		}
		
		hspeed = 0;
			
}
else{	




	if (keyboard_check(vk_left) and !instance_place(x-move_speed, y, obj_block)) {
		x += -move_speed
		image_xscale = -1;
	}

	if (keyboard_check(vk_right) and !instance_place(x+move_speed, y, obj_block)) {
		x += move_speed
		image_xscale = 1;
	}

	if (keyboard_check(vk_up)){
		show_debug_message("jumping...")
		if (instance_place(x, y+1, obj_block)){
			vspeed = jump_height;	
		}

	}



	if (!instance_place(x, y+1, obj_block)){
		gravity = 0.25;

	} else {
		gravity = 0;

	}


	var maxSpd = 12;

	if (vspeed > maxSpd){
		vspeed = min(vspeed, maxSpd);
	}
	
	
	if (keyboard_check_pressed(ord("Z"))){
		instance_create_layer(x, y, "Instances", obj_sword);
	}
}