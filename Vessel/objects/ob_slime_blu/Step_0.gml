event_inherited();



if hp >0 && ko == false{
script_execute(state);

if distance_to_object(oPlayer) <= 10{
	if attacking == false{
	attacking = true;
	image_index = 0
	sprite_index = sp_slime_blu_hop;
	image_speed = 1;
	spd = .80;
	alarm[1] = 60;
	}	
} else if attacking == true && sprite_index == sp_slime_blu_hop && image_index >= 14{
	attacking = false;
	sprite_index = sp_slime_blu;
	spd = .30;
	alarm[1] = 120;
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
if sprite_index == sp_slime_blu_ko && image_index >= 16{
	
	script_execute(scr_ko);
	instance_destroy();
}
image_xscale = 1;
