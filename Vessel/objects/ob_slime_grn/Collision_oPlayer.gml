/// Damage the player
if (state != scr_enemy_stall_state){
	if sprite_index == sp_slime_grn_hop && image_index >= 10{
	var dir = point_direction(other.x, other.y, x, y);
	var xdir = lengthdir_x(1, dir);
	var ydir = lengthdir_y(1, dir);
	var damage = instance_create_depth(other.x + xdir, other.y + ydir, other.depth - 1, ob_enemy_damage);
	damage.creator = id;
	damage.knockback = 3;
	state = scr_enemy_stall_state;
	alarm[1] = 60;
}
}
