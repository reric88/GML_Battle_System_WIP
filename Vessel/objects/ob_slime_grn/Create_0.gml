/// Initialize slime
event_inherited();
ko_index = 0;
//myid = scr_idgen();
spd = .20
movedir = 0;
xpos = phy_position_x;
ypos = phy_position_y;
movestate = 0;
ko = false;
state = scr_enemy_idle_state;
alarm [0] = 30 * irandom_range(2, 5);
sight = 64;
targetx = 0;
targety = 0;
spdef = sp_slime_blu;
attacking = false;








/*
event_inherited();
hp = 3;
spd = .75;
movedir = 0;
if instance_exists(oPlayer){
	alarm_set(2, 60);
}
xpos = phy_position_x;
ypos = phy_position_y;
movestate = 0;
ko = false;

