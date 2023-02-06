/// Collect health
with (other){
	instance_destroy();
}

// Level up code
with (ob_player_stats){
	hp = min(hp+5, maxhp);
}

