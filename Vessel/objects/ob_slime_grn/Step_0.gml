/// Move towards player
event_inherited();

if hp >0 && ko == false{
script_execute(state);

if distance_to_object(oPlayer) <= 5{
	if attacking == false{
	attacking = true;
	image_index = 0
	sprite_index = sp_slime_grn_hop;
	image_speed = 1;
	spd = .30;
	alarm[1] = 30;
	}	
} else if attacking == true && sprite_index == sp_slime_grn_hop && image_index >= 14{
	attacking = false;
	sprite_index = sp_slime_grn;
	spd = .20;
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
if sprite_index == sp_slime_grn_ko && image_index >= 16{
	script_execute(scr_ko);
	instance_destroy();
}
image_xscale = 1;








/*
event_inherited();

if hp <= 0 && ko = false{
	phy_active = false;
	spd = 0;
	ko = true;
	alarm[1] = 1;
}

if sprite_index == sp_slime_grn_ko && image_index >= 15{
	instance_destroy();
}

if (instance_exists(oPlayer)) && hp >= 1{
sip = sign(irandom(32))/irandom_range(1,3)

switch (movestate){
	case 0:

	break;
	
	case 1:
		script_execute(scr_move_random);


	break;
	
	case 2:
		script_execute(scr_point_and_follow);


	break;
	
	case 3:
		phy_position_y += sip;


	break;
	
	case 4:
		phy_position_y -= sip;


	break;
	
	case 5:
		phy_position_x += sign(oPlayer.x - x);


	break;
	
	case 6:
		phy_position_y += sign(oPlayer.y - y);


	break;
	
	case 7:
		phy_position_x += sign(oPlayer.x - x);


	break;
	
	case 8:
		phy_position_y += sign(oPlayer.y - y);


	break;

	case 9:
		phy_position_x += sign(oPlayer.x - x);


	break;
	
	case 10:
		phy_position_y += sign(oPlayer.y - y);


	break;

	default:
	
	break;
}
}

image_xscale = 1;