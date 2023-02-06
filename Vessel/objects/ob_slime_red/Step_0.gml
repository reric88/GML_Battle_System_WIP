event_inherited();

if hp >0 && ko == false{
script_execute(state);

if distance_to_object(oPlayer) <= 5{
	if attacking == false{
	attacking = true;
	image_index = 0
	sprite_index = sp_slime_red_hop;
	image_speed = 1;
	spd = .25;
	alarm[1] = 30;
	}	
} else if attacking == true && sprite_index == sp_slime_red_hop && image_index >= 14{
	attacking = false;
	sprite_index = sp_slime_red;
	spd = .15;
	alarm[1] = 30;
}
}
if hp <= 0 && ko == false{
	ko = true;
	spd = 0;
	phy_active = false;
	instance_create_depth(x, y, depth, ob_xp);
	if (scr_chance(.5)){
		instance_create_depth(x+random_range(-4, 4), y+random_range(-4, 4), depth +1, ob_health)
	}
	alarm[2] = 3;
}
if sprite_index == sp_slime_red_ko && image_index >= 16{
	script_execute(scr_ko);
	instance_destroy();
}
image_xscale = 1;









/*
event_inherited();

if hp >0 && ko = false{
script_execute(state);
}


if hp <= 0 && ko == false{
	phy_active = false;
	instance_create_depth(x, y, depth, ob_xp);
	if (scr_chance(.5)){
		instance_create_depth(x+random_range(-4, 4), y+random_range(-4, 4), depth +1, ob_health)
	}	
	ko = true;
	alarm[4] = 1;
	
}


if sprite_index == sp_slime_red_ko && image_index >= 16{
	instance_destroy();
}

image_xscale = 1;
