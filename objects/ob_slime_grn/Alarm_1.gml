// Stall








/*
image_index = 0
sprite_index = sp_slime_grn_ko;	
image_speed = 1;
instance_create_depth(x, y, depth, ob_xp);
if (scr_chance(.5)){
	instance_create_depth(x+random_range(-4, 4), y+random_range(-4, 4), depth +1, ob_health)
}