/// Move camera 10% towards player

if (instance_exists(oPlayer)){
	x += (oPlayer.x - x) * .1;
	y += (oPlayer.y - y) * .1;
}
